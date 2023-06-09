require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      name: "MyString",
      title: "MyString",
      landline: "MyString",
      mobile: "MyString",
      email: "MyString",
      department: nil,
      company: nil
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[title]"

      assert_select "input[name=?]", "employee[landline]"

      assert_select "input[name=?]", "employee[mobile]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "input[name=?]", "employee[department_id]"

      assert_select "input[name=?]", "employee[company_id]"
    end
  end
end
