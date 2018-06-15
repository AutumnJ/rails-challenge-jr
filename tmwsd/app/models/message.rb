class Message < ApplicationRecord

  has_secure_password :validations => false


  validates :body, presence: true
  # Email functionality not currently in use
  # validates :email, presence: true

  # With the token validation, set_token method doesn't have a chance to run
  # validates :token, presence: true

  before_save :set_token


  def set_token
    #switch from hex for better security
    self.token = SecureRandom.uuid
  end
  
end
