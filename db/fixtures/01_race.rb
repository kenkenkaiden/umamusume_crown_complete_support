# 重賞レース情報を書く
# レース情報の更新がない場合、bin\render-build.shの
# bundle exec rake db:seed_fu RAILS_ENV=production
# という記述を削除するか、コメントアウトする

Race.seed do |s|
  s.id    = 1
  s.name = 'フェブラリーステークス'
  s.grade = 'G1'
  s.surface = 'ダート'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_senior = '2月後半'
  s.course = '東京'
  s.default_order = 1
end

Race.seed do |s|
  s.id    = 2
  s.name = '高松宮記念'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '短距離'
  s.distance = '1200'
  s.date_senior = '3月後半'
  s.course = '中京'
  s.default_order = 2
end

Race.seed do |s|
  s.id    = 3
  s.name = '大阪杯'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_senior = '3月後半'
  s.course = '阪神'
  s.default_order = 3
end

Race.seed do |s|
  s.id    = 4
  s.name = '桜花賞'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_classic = '4月前半'
  s.course = '阪神'
  s.default_order = 4
end

Race.seed do |s|
  s.id    = 5
  s.name = '皐月賞'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_classic = '4月前半'
  s.course = '中山'
  s.default_order = 5
end

Race.seed do |s|
  s.id    = 6
  s.name = '天皇賞春'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '長距離'
  s.distance = '3200'
  s.date_senior = '4月後半'
  s.course = '京都'
  s.default_order = 6
end

Race.seed do |s|
  s.id    = 7
  s.name = 'NHKマイルカップ'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_classic = '5月前半'
  s.course = '東京'
  s.default_order = 7
end

Race.seed do |s|
  s.id    = 8
  s.name = 'ヴィクトリアマイル'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_senior = '5月前半'
  s.course = '東京'
  s.default_order = 8
end

Race.seed do |s|
  s.id    = 9
  s.name = 'オークス'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2400'
  s.date_classic = '5月後半'
  s.course = '東京'
  s.default_order = 9
end

Race.seed do |s|
  s.id    = 10
  s.name = '日本ダービー'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_classic = '5月後半'
  s.course = '東京'
  s.default_order = 10
end

Race.seed do |s|
  s.id    = 11
  s.name = '安田記念'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_classic = '6月前半'
  s.date_senior = '6月前半'
  s.course = '東京'
  s.default_order = 11
end

Race.seed do |s|
  s.id    = 12
  s.name = '宝塚記念'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2200'
  s.date_classic = '6月後半'
  s.date_senior = '6月後半'
  s.course = '阪神'
  s.default_order = 12
end

Race.seed do |s|
  s.id    = 13
  s.name = 'スプリンターズステークス'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '短距離'
  s.distance = '1200'
  s.date_classic = '9月後半'
  s.date_senior = '9月後半'
  s.course = '中京'
  s.default_order = 13
end

Race.seed do |s|
  s.id    = 14
  s.name = '秋華賞'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_classic = '10月後半'
  s.course = '京都'
  s.default_order = 14
end

Race.seed do |s|
  s.id    = 15
  s.name = '菊花賞'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '長距離'
  s.distance = '3200'
  s.date_classic = '10月後半'
  s.course = '京都'
  s.default_order = 15
end

Race.seed do |s|
  s.id    = 16
  s.name = '天皇賞秋'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2000'
  s.date_classic = '10月後半'
  s.date_senior = '10月後半'
  s.course = '東京'
  s.default_order = 16
end

Race.seed do |s|
  s.id    = 17
  s.name = 'エリザベス女王杯'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2200'
  s.date_classic = '11月前半'
  s.date_senior = '11月前半'
  s.course = '京都'
  s.default_order = 17
end

Race.seed do |s|
  s.id    = 18
  s.name = 'マイルチャンピオンシップ'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = 'マイル'
  s.distance = '1600'
  s.date_classic = '11月後半'
  s.date_senior = '11月後半'
  s.course = '京都'
  s.default_order = 18
end

Race.seed do |s|
  s.id    = 19
  s.name = 'ジャパンカップ'
  s.grade = 'G1'
  s.surface = '芝'
  s.classification = '中距離'
  s.distance = '2400'
  s.date_classic = '11月後半'
  s.date_senior = '11月後半'
  s.course = '東京'
  s.default_order = 19
end

Race.seed do |s|
  s.id    = 20
  s.name = 'チャンピオンズカップ'
  s.grade = 'G1'
  s.surface = 'ダート'
  s.classification = 'マイル'
  s.distance = '1800'
  s.date_classic = '12月前半'
  s.date_senior = '12月前半'
  s.course = '東京'
  s.default_order = 20
end