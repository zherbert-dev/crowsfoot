class CreateMonstersTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :monsters do |t|
      t.string     :name, null: false
      t.integer    :level, null: false, default: 1
      t.integer    :health, null: false, default: 5
      t.integer    :base_damage, null: false, default: 3
      t.timestamps null: false
    end

    add_index :monsters, :id, unique: true
  end

  def self.down
    drop_table :monsters
  end
end
