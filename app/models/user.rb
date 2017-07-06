class User < ApplicationRecord
  has_many :posts
  has_many :cities, through: :posts
end
