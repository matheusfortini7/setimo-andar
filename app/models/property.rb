class Property < ApplicationRecord
  belongs_to :user
  has_many :sales, dependent: :destroy

  # Incluir as validações dos campos
  validates :title, :description, :address, presence: true
  validates :price, presence: true, numericality: { only_float: true }
end
