class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string   :name,               null: false, unique: true # レース名
      t.string   :grade,              null: false               # グレード
      t.string   :surface,            null: false               # バ場
      t.string   :classification,     null: false               # 距離区分
      t.integer  :disctance,          null: false               # 距離
      t.string   :date_junior                                   # 開催日ジュニア期
      t.string   :date_classic                                  # 開催日クラシック期
      t.string   :date_senior                                   # 開催日シニア期
      t.string   :course,             null: false               # レース場
      t.timestamps
    end
  end
end
