class RemoveColumnsToProperties < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :street_name, :string
    remove_column :properties, :city, :string
    remove_column :properties, :state, :string
    remove_column :properties, :country, :string
  end
end
