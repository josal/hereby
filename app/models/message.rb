class Message < ActiveRecord::Base
  
  validates :body, presence: true, length: {maximum: 160}
end
