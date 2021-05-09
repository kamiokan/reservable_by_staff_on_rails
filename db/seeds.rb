# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Staff.create(name: '花垣 武道')
Staff.create(name: '橘 日向')
Staff.create(name: '橘 直人')
Staff.create(name: '佐野 万次郎')
Staff.create(name: '龍宮寺 堅')

start_times = %w[1200 1215 1230 1245 1300 1315 1330 1345]
end_times = %w[1215 1230 1245 1300 1315 1330 1345 1400]
[1, 2, 3, 4, 5].each do |staff_id|
  start_times.each_with_index do |time, index|
    ReservableByStaff.create!(
      the_date: '2021-05-08',
      start_time: time,
      end_time: end_times[index],
      staff_id: staff_id,
      filled_flag: [0.1].sample
    )
  end
end
