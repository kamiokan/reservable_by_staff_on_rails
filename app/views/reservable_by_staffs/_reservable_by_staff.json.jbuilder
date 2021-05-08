json.extract! reservable_by_staff, :id, :the_date, :start_time, :end_time, :staff_id, :filled_flag, :created_at, :updated_at
json.url reservable_by_staff_url(reservable_by_staff, format: :json)
