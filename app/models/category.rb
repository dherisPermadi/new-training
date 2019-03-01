class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  validates :name, uniqueness: true
  has_many :homeworks
end
