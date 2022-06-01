class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true, acceptance: { accept: %w`[ chinese italian japanese french belgian ]` }
end
