class CreateUserLogs < ActiveRecord::Migration
  def self.up
    create_table :user_logs do |t|
      t.datetime :datetime, :null => false
      t.integer :action, :null, :default => 0
      t.string :ip, :null => false
      t.string :user_agent, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :user_logs
  end
end
