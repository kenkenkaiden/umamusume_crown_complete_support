class CreateTargetRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :target_races do |t|
      t.references :umamusume_name,   null: false
      t.references :race,             null: false, foreign_key: true
      t.string     :period,           null: false
      t.timestamps
    end
  end
end
