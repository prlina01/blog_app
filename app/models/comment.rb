class Comment < ApplicationRecord
  belongs_to :blog, required: false
end
