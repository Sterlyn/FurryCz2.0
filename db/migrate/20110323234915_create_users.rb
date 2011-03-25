class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :nickname, :null => false
      t.string :password, :null => false
      t.string :species, :null => false, :default => ""
      t.string :homepage, :null => false, :default => ""
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.string :location, :null => false, :default => ""
      t.string :gps_location, :null => false, :default => ""
      t.string :distance_from_prague, :null => false, :default => ""
      t.text :hobbies, :null => false, :default => ""
      t.text :notes, :null => false, :default => ""
      # True => MALE, False => Female
      t.boolean :gender, :null => false, :default => true
      t.string :wants_to_travel, :null => false, :default => ""
      t.date :born_at, :default => nil
      t.string :email, :null => false, :default => ""
      t.integer :status, :null => false, :default => 0 # Waiting for confirmation
      t.boolean :adult, :null => false, :default => false
      t.boolean :admin, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
