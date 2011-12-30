class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :null => false
      t.string :nickname, :null => false
      t.string :password, :null => false
      t.string :email, :null => false, :default => ""
      t.integer :status, :null => false, :default => 0 # Waiting for confirmation
      t.boolean :adult, :null => false, :default => false
      t.boolean :admin, :null => false, :default => false
      t.boolean :deleted, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
