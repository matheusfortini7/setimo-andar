class AddAddressToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :address, :string
  end
end
