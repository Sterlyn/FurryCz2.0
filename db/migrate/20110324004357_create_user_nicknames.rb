class CreateUserNicknames < ActiveRecord::Migration
  def self.up
    create_table :user_nicknames do |t|
      t.integer :user_id, :null => false
      t.string :nickname, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :user_nicknames
  end
end
