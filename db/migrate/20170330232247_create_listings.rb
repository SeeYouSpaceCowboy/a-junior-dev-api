class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :company
      t.string :company_url
      t.string :apply_url
      t.string :position
      t.string :shift
      t.string :experience_level
      t.string :programming_languages
      t.integer :compensation
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :description

      t.timestamps
    end
  end
end
