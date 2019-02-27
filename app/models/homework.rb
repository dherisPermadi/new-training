class Homework < ApplicationRecord
  validates :homework_name, presence: true
  validates :category, presence: true
  validates :deadline, presence: true
  validates :description, presence: true, length: { maximum: 300 }
  validate :deadline_cannot_be_in_the_past
  belongs_to :category

  def deadline_cannot_be_in_the_past
    errors.add(:deadline, "can't be in the past") if
    deadline < Date.today
  end
end
