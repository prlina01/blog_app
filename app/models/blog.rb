class Blog < ApplicationRecord
  belongs_to :topic, required: false
  has_many :comments

  validates_presence_of :body, :title, :user

  belongs_to :user, required: false

  def set_user
    self.user_id = current_user.id
  end
end
