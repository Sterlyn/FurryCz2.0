class CreateUserContacts < ActiveRecord::Migration
  def self.up
    create_table :user_contacts do |t|
      t.integer :user_id, :null => false
      t.integer :contact_type, :null => false
      t.string :contact, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :user_contacts
  end
end
