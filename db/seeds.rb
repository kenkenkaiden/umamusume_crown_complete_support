require 'csv'

CSV.foreach('db/csv/race_info.csv', headers: true) do |row|
  Race.create!(
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