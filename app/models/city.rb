class City < ApplicationRecord
  has_many :posts
  has_many :users, through: :posts

  validates_uniqueness_of :city

  def to_param
    city
  end
end
