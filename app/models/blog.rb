class Blog < ApplicationRecord
  

  enum status: { draft: 0, published: 1}
  belongs_to :topic, required: false
  validates_presence_of :topic_id

  has_many :comments, dependent: :destroy

  validates_presence_of :body, :title

  belongs_to :user, required: false

  scope :hide_drafts, lambda { Blog.where(["status = ?", 1])}
  # scope :subscribed_users, lambda { User.where(["subscription = ?", 1])}

  # before_create :set_user

  # def set_user
  #   self.user_id = User.last.id
  # end
end
