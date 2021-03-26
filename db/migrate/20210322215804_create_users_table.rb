class CreateUsersTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :users do |t|
      t.string     :username
      t.string     :uid
      t.timestamps null: false
    end

    add_index :users, :id, unique: true
  end

  def self.down
    drop_table :users
  end
end
