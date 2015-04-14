class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name, presence: true, uniqueness: true
  
  has_many :messages
  
  has_many :events

  def followed_by?(user_id)
    !Event.where(user_id: user_id, user_target_id: self.id).empty?
  end
  
end
