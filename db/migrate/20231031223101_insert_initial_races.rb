class InsertInitialRaces < ActiveRecord::Migration[6.0]
  def up
    require 'csv'

    # CSVファイルのパスを指定
    csv_file = Rails.root.join('db', 'csv', 'race_info.csv')

    # データベースにデータを挿入
    CSV.foreach(csv_file, headers: true) do |row|
      Race.create(
        name: row['name'],
        grade: row['grade'],
        surface: row['surface'],
        classification: row['classification'],
        distance: row['distance'],
        date_junior: row['date_junior'],
        date_classic: row['date_classic'],
        date_senior: row['date_senior'],
        course: row['course'],
        default_order: row['default_order']
      )
    end
  end

end
