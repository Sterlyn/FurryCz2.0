class CreateUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :user_profiles do |t|
			t.integer :user_id, :null => false
			t.string :species, :null => false, :default => ""
			t.string :other_nicknames, :null => false, :default => ''
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
      t.timestamps
    end
  end

  def self.down
    drop_table :user_profiles
  end
end
