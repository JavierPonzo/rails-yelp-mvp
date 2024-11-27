class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'], message: "please write a valid category"}
  validates :address, presence: true
  validates :name, presence: true
end
