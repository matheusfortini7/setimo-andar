class Property < ApplicationRecord
  belongs_to :user
  has_many :sales, dependent: :destroy
  geocoded_by :address
  # Incluir as validações dos campos
  validates :title, :description, :address, presence: true
  validates :price, presence: true, numericality: { only_float: true }
  after_validation :geocode, if: :will_save_change_to_address?
end
