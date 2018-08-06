class Blog < ApplicationRecord
  belongs_to :topic, required: false
  has_many :comments
end
