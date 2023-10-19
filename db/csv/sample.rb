require 'csv'

headers = ["language", "product"]
rows = [["ruby", "web_application"], ["python", "AI"], ["java", "buisiness_application"]]
csv_data = CSV.generate() do |csv|
  csv << headers
  rows.each do |row|
    csv << row
  end
end

p csv_data