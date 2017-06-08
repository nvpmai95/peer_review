class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, unique: true, null: false
      t.string :name, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
