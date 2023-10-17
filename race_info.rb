require 'csv'

csv_file = Rails.root.join('race_info.csv') # CSVファイルのパス
CSV.foreach(csv_file, headers: true) do |row|
  race = Race.new(
    name: row['name'],
    grade: row['grade'],
    surface: row['surface'],
    classification: row['classification'],
    distance: row['distance'],
    date_1: row['date_1'],
    date_2: row['date_2'],
    course: row['course']
  )
  race.save
end