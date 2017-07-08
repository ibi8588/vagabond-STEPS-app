class Post < ApplicationRecord
  belongs_to :user
  belongs_to :city

  validates :title,
    presence: true,
    length: { maximum: 200 }

    validates :description,
      presence: true,
      length: { minimum: 1 }
end
