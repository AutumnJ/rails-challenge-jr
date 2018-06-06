class Message < ApplicationRecord

  has_secure_password :validations => false

  validates :body, presence: true
  # Email functionality not currently in use
  # validates :email, presence: true
  validates :token, presence: true
  
end
