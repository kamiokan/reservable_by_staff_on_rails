class ReservableByStaff < ApplicationRecord
  belongs_to :staff
  validates :start_time, absence: false
  validates :start_time, format: { with: /\A\d{4}\z/, message: "数字４桁で入力してください" }
  validates :end_time, absence: false
  validates :end_time, format: { with: /\A\d{4}\z/, message: "数字４桁で入力してください" }
end
