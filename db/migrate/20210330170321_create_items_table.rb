class CreateItemsTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :items do |t|
      t.string     :name, null: false
      t.string     :type, null: false
      t.integer    :value, null: false, default: 1
      t.timestamps null: false
    end

    add_index :items, :id, unique: true
  end

  def self.down
    drop_table :items
  end
end
