class Blog < ApplicationRecord
  belongs_to :topic, required: false
  has_many :comments

  validates_presence_of :body, :title
end
