class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.boolean :open, default: true
      t.string :company
      t.string :position
      t.boolean :full_time, default: true
      t.string :experience_level
      t.string :languages
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :description

      t.timestamps
    end
  end
end
