require 'csv'

csv_file_path = 'db/csv/race_info.csv'

CSV.foreach(csv_file_path, headers: true, encoding: 'UTF-8') do |row|
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

puts 'Race data imported successfully!'