class Comment < ApplicationRecord
  belongs_to :blog, required: false
  belongs_to :user, required: false
  validates :body, presence: true, length: {minimum: 10, maximum: 1000}
end