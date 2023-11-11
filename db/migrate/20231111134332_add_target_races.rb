class AddTargetRaces < ActiveRecord::Migration[6.0]
  def up
    require 'csv'

    # CSVファイルのパスを指定
    csv_file = Rails.root.join('db', 'csv', 'target_race_info.csv')

    # データベースにデータを挿入
    CSV.foreach(csv_file, headers: true) do |row|
      TargetRace.create(
        umamusume_name: row['umamusume_name'],
        race_id: row['race_id'],
        period: row['period']
      )
    end
  end

end
