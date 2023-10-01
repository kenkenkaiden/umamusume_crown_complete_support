class CreateUmamusumes < ActiveRecord::Migration[6.0]
  def change
    create_table :umamusumes do |t|
      t.string     :name,          null: false
      t.string     :turf,          null: false
      t.string     :dirt,          null: false
      t.string     :sprint,        null: false
      t.string     :mile,          null: false
      t.string     :intermediate,  null: false
      t.string     :long,          null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end