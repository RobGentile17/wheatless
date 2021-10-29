class MealPlan < ApplicationRecord
  belongs_to :user
  has_many :meals, dependent: :destroy

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user, presence: true

  accepts_nested_attributes_for :meals

  scope :between, -> (start_date, end_date) { where("start_date <= ? AND end_date >= ?", start_date, end_date) }

  def to_s
    "#{start_date} - #{end_date}"
  end
end