json.extract! timesheet, :id, :overtime, :employee_id, :yearmonth, :created_at, :updated_at
json.url timesheet_url(timesheet, format: :json)
