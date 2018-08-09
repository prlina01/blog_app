class Blog < ApplicationRecord
  
  belongs_to :topic, required: false
  validates_presence_of :topic_id

  has_many :comments, dependent: :destroy

  validates_presence_of :body, :title

  belongs_to :user, required: false


  def set_user
    self.user_id = current_user.id
  end
end
