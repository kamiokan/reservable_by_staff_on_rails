class CreateReservableByStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :reservable_by_staffs do |t|
      t.date :the_date
      t.string :start_time
      t.string :end_time
      t.references :staff, null: false, foreign_key: true
      t.integer :filled_flag, default: 0

      t.timestamps
    end
  end
end
