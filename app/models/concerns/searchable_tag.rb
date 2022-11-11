# frozen_string_literal: true

module SearchableTag
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    # Sync up Elasticsearch with PostgreSQL.
    after_commit :index_document, on: %i[create update]
    after_commit :delete_document, on: [:destroy]

    settings INDEX_OPTIONS do
      mappings dynamic: 'false' do
        indexes :name, analyzer: 'autocomplete'
        indexes :slug
      end
    end

    def self.search(term)
      __elasticsearch__.search(
        {
          query: {
            multi_match: {
              query: term,
              fields: ['name']
            }
          }
        }
      )
    end
  end

  def as_indexed_json(_options = {})
    as_json({
              only: %i[name slug]
            })
  end

  def index_document
    ElasticsearchIndexJob.perform_later('index', 'Tag', id)
  end

  def delete_document
    ElasticsearchIndexJob.perform_later('delete', 'Tag', id)
  end

  INDEX_OPTIONS =
    { number_of_shards: 1, analysis: {
      filter: {
        'autocomplete_filter' => {
          type: 'edge_ngram',
          min_gram: 1,
          max_gram: 20
        }
      },
      analyzer: {
        'autocomplete' => {
          type: 'custom',
          tokenizer: 'standard',
          filter: %w[
            lowercase
            autocomplete_filter
          ]
        }
      }
    } }.freeze
end
