class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # may add :confirmable :lockable, :timeoutable later for PRD
# for confirmable: https://github.com/plataformatec/devise/wiki/How-To:-Add-:confirmable-to-Users
# i can also allow unconfirmed access for a grace period or something - instructions on the link above
#to add confirmable, just add it below
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products
  has_many :transactions
  has_many :messages
  
  has_many :touser_id, class_name: 'Messages', :foreign_key => :touser_id
  has_many :fromuser_id, class_name: 'Messages', :foreign_key => :fromuser_id

  validates :officephone, :phone_number => true
  validates :mobilephone, :phone_number => true

  validates_presence_of :email, :username, :fname, :lname

  include ApplicationHelper

end
