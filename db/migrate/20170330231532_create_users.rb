class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :avatar_url
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end