require 'csv'

# テキストファイルのパス
txt_file_path = 'db/fixtures/race_info.txt'

# CSVファイルのパス
csv_file_path = 'db/csv/race_info.csv'

# テキストファイルを書き込みモードでオープン
File.open(txt_file_path, 'w') do |file|
  # CSVファイルを読み込んでハッシュの配列に変換
  races_data = CSV.read(csv_file_path, headers: true)
  
  # Race.seedを使ってデータを生成
  races_data.each_with_index do |row, index|
    # テキストファイルに書き込む
    file.puts("Race.seed do |s|")
    file.puts("  s.id    = #{index + 1}")
    file.puts("  s.name = '#{row['name']}'")
    file.puts("  s.grade = '#{row['grade']}'")
    file.puts("  s.surface = '#{row['surface']}'")
    file.puts("  s.classification = '#{row['classification']}'")
    file.puts("  s.distance = '#{row['distance']}'")
    file.puts("  s.date_junior = '#{row['date_junior']}'")
    file.puts("  s.course = '#{row['course']}'")
    file.puts("  s.default_order = #{row['default_order']}")
    file.puts("end\n\n")
  end
end
