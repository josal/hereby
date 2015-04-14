class Message < ActiveRecord::Base
  
  validates :body, presence: true, length: {maximum: 160}
  
  belongs_to :user
end
