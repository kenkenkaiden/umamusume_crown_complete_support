# require 'csv'

# # CSVファイルのパス
# csv_file_path = 'db/csv/race_info.csv'

# # CSVファイルを読み込んでハッシュの配列に変換
# races_data = CSV.read(csv_file_path, headers: true)

# # Raceモデルの更新または作成
# races_data.each do |row|
#   race = Race.find_or_initialize_by(id: row['id']) # IDでレースを検索する
#   race.update(
#     name: row['name'],
#     grade: row['grade'],
#     surface: row['surface'],
#     classification: row['classification'],
#     distance: row['distance'],
#     date_junior: row['date_junior'],
#     course: row['course'],
#     default_order: row['default_order']
#   )
# end



# 主にメイクデビューレースの情報を書く
# race_info.csvファイルにもメイクデビューレース情報の追加をする

# レース情報の更新がない場合、bin\render-build.shの
# bundle exec rake db:seed_fu RAILS_ENV=production
# という記述を削除するか、コメントアウトする


Race.seed do |s|
  s.id    = 156
  s.name = 'メイクデビュー(スペシャルウィーク)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_junior = '6月'
  s.course = '阪神'
  s.default_order = 301
end


Race.seed do |s|
  s.id    = 157
  s.name = 'メイクデビュー(サイレンススズカ)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_junior = '6月'
  s.course = '阪神'
  s.default_order = 302
end


Race.seed do |s|
  s.id    = 158
  s.name = 'メイクデビュー(トウカイテイオー)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_junior = '6月'
  s.course = '中京'
  s.default_order = 303
end


Race.seed do |s|
  s.id    = 159
  s.name = 'メイクデビュー(マルゼンスキー)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '短距離'
  s.distance = '1200'
  s.date_junior = '6月'
  s.course = '中山'
  s.default_order = 304
end


Race.seed do |s|
  s.id    = 160
  s.name = 'メイクデビュー(フジキセキ)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_junior = '6月'
  s.course = '新潟'
  s.default_order = 305
end

Race.seed do |s|
  s.id    = 161
  s.name = 'メイクデビュー(オグリキャップ)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_junior = '6月'
  s.course = '阪神'
  s.default_order = 306
end

Race.seed do |s|
  s.id    = 162
  s.name = 'メイクデビュー(ゴールドシップ)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_junior = '6月'
  s.course = '札幌'
  s.default_order = 307
end

Race.seed do |s|
  s.id    = 163
  s.name = 'メイクデビュー(ウオッカ)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_junior = '6月'
  s.course = '京都'
  s.default_order = 308
end

Race.seed do |s|
  s.id    = 164
  s.name = 'メイクデビュー(ダイワスカーレット)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_junior = '6月'
  s.course = '京都'
  s.default_order = 309
end

Race.seed do |s|
    s.id    = 165
    s.name = 'メイクデビュー(タイキシャトル)'
    s.grade = 'OP'
    s.surface = 'ダート'
    s.classification = 'マイル'
    s.distance = '1600'
    s.date_junior = '6月'
    s.course = '東京'
    s.default_order = 310
end

Race.seed do |s|
  s.id    = 166
  s.name = 'メイクデビュー(グラスワンダー)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1800'
  s.date_junior = '6月'
  s.course = '中山'
  s.default_order = 311
end

Race.seed do |s|
  s.id    = 167
  s.name = 'メイクデビュー(ヒシアマゾン)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_junior = '6月'
  s.course = '中山'
  s.default_order = 312
end

Race.seed do |s|
  s.id    = 168
  s.name = 'メイクデビュー(メジロマックイーン)'
  s.grade = 'OP'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_junior = '6月'
  s.course = '阪神'
  s.default_order = 313
end