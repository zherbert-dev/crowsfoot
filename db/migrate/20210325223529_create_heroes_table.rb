class CreateHeroesTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :heroes do |t|
      t.string     :name, null: false
      t.integer    :level, null: false, default: 1
      t.integer    :max_health, null: false, default: 15
      t.integer    :current_health, null: false, default: 15
      t.integer    :max_energy, null: false, default: 5
      t.integer    :current_energy, null: false, default: 5
      t.integer    :base_damage, null: false, default: 5
      t.references :user, foreign_key: true
      t.timestamps null: false
    end

    add_index :heroes, :id, unique: true
  end

  def self.down
    drop_table :heroes
  end
end
