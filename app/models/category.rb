class Category < ApplicationRecord
  # has_many :users
  validates :title, presence: true
  paginates_per 5
end