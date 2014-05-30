class User < ActiveRecord::Base
  # has_many :favorites, dependent: :destroy
  # has_many :events, through: :favorites

  # Add handlers to run while creating and saving
  before_create :create_remember_token
  before_save :normalize_fields

  # Validate name:
  validates :name,
    presence: true,
    uniqueness: { case_sensitive: false }

  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  }

  # Secure password features
  has_secure_password

  # Create a new remember token for the user
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  # Hash a token
  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def favorite(event)
    events << event
  end

  private

  # Creates a new session token for user

  def create_remember_token
    self.remember_token = User.hash(User.new_remember_token)
  end

  #Normalize fields for consistentcy
  def normalize_fields
    self.email.downcase!
  end
end
