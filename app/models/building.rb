class Building < ApplicationRecord
  validates :name, presence: true
  validates :rental_fees, presence: true
  validates :address, presence: true
  validates :build_year, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true
end
