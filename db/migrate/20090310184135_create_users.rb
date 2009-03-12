class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,             :null => false
      t.string :first_name,        :null => false      
      t.string :last_name,         :null => false
      t.string :crypted_password,  :null => false
      t.string :password_salt,     :null => false
      t.string :persistence_token, :null => false
      t.string :perishable_token,  :null => false         
      t.datetime :last_request_at
      t.boolean :active, :default => true
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
