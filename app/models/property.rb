class Property < ApplicationRecord
  belongs_to :user

  # Incluir as validações dos campos
  validates :title, :description, :street_name, :city, :state, :country, presence: true
  validates :price, presence: true, numericality: { only_float: true }
end
