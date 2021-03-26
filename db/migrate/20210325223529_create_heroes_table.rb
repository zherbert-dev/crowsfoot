class CreateHeroesTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :heroes do |t|
      t.string     :name, null: false
      t.integer    :level, null: false, default: 1
      t.integer    :health, null: false, default: 25
      t.integer    :base_damage, null: false, default: 3
      t.references :user, foreign_key: true
      t.timestamps null: false
    end

    add_index :heroes, :id, unique: true
  end

  def self.down
    drop_table :heroes
  end
end
