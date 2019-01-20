class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.integer :number
      t.string :zip_code
      t.text :message
      t.boolean :bob
      t.boolean :kevin
      t.boolean :stuart

      t.timestamps null: false
    end
  end
end
