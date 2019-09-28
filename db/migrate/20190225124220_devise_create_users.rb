# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :username,              null: false, default: ""
      t.integer :role_id, null: false, default: ""
      t.string  :name, null: false, default: ""
      t.integer :emp_id, null: false, default: ""
   
      t.timestamps null: false
    end

    add_index :users, :email
    add_index :users, :username,                unique: true
    add_index :users, :emp_id,                unique: true
   
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
