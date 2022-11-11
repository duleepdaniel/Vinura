# frozen_string_literal: true

class TagRelationship < ActiveRecord::Base
  belongs_to :tag
  belongs_to :related_tag, class_name: 'Tag'
end
