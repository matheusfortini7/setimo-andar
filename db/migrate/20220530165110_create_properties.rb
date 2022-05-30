class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.string :street_name
      t.string :title
      t.string :city
      t.string :state
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
