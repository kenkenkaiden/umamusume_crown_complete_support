# 重賞レース情報を書く


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