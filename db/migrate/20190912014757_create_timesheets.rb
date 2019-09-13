class CreateTimesheets < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheets do |t|
      t.integer :overtime
      t.integer :employee_id
      t.date :yearmonth

      t.timestamps
    end
  end
end
