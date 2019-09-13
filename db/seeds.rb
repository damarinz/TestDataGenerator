# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

num_of_employees = 200

Department.create(name: "人事")
Department.create(name: "総務")
Department.create(name: "営業")
Department.create(name: "開発")
Department.create(name: "企画")
Department.create(name: "配信")
Department.create(name: "財務")

num_of_employees.times do
  Employee.create(name: FFaker::NameJA.last_first, department_id: rand(1..7))
end

# 残業時間データの作成
# 開始は2019/01
# 一ヶ月ごとにemployees.eachで作成
# 範囲は0から60

(2016..2020).each do |a_year|
  (1..12).each do |a_month|
    calendar_date = Time.new(a_year,a_month,1)
    (1..num_of_employees).each do |employee|
       Timesheet.create(overtime: rand(0..60), employee_id: employee, yearmonth: calendar_date)
    end

  end
end


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?