class CreateUsersTable < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.id         :id
      t.references :hero, index: true, foreign_key: true, null: true
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
