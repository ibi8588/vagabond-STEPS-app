class Post < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :comments

  validates :title,
    presence: true,
    length: { maximum: 200 }

  validates :description,
            presence: true,
            length: { minimum: 1 }
end
