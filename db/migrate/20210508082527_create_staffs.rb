class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :deleted, default: 0

      t.timestamps
    end
  end
end
