class CreateUserPages < ActiveRecord::Migration
  def self.up
    create_table :user_pages do |t|
      t.integer :user_id,:null => false
      t.string :url, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :user_pages
  end
end
