require 'csv'

## 読み込みを行うテスト用のCSVファイル作成
File.write("race_info.csv, <<CSV")
id,name,grade,surface,classification,distance,date_1,date_2,course
1,日本ダービー,G1,芝,中距離,2400,5月後半,,東京
2,凱旋門賞,G1,芝,中距離,2400,10月前半,,ロンシャン
CSV

table = CSV.read("users.csv", headers: true)

table.each do |row|
  name = row["name"]
  course = row["course"]
end