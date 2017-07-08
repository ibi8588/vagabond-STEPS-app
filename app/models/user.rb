class User < ApplicationRecord
  has_many :posts
  has_many :cities, through: :posts

  has_secure_password

  # validations!

  validates :first_name,
    presence: true,
    uniqueness: true,
    length: { maximum: 25 }

  validates :last_name,
    presence: true,
    length: { maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
    presence: true,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: true,
    length: { maximum: 20 }

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

  def to_param
    first_name
  end
end
