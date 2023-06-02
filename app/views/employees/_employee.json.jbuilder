json.extract! employee, :id, :name, :title, :landline, :mobile, :email, :department_id, :company_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
