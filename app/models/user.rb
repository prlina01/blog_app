class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin, :reader], multiple: false)                                      ##
  ############################################################################################ 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_create :default_role
  has_one_attached :avatar
  enum subscription: {unsubscribed: 0, subscribed: 1}


  has_many :blogs
  has_many :comments
  validates :first_name, presence: true

  

  def default_role
    self.roles = 'reader'
  end

end

