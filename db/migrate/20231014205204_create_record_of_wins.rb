class CreateRecordOfWins < ActiveRecord::Migration[6.0]
  def change
    create_table :record_of_wins do |t|
      t.references :umamusume, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true
      t.timestamps
    end
  end
end
