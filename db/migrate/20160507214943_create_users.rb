class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :gender
    	t.string :email
    	t.string :password_digest
    	t.integer :age

      t.timestamps null: false
    end
  end
end
