require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  let(:employee) {
    Employee.create!(
      name: "MyString",
      title: "MyString",
      landline: "MyString",
      mobile: "MyString",
      email: "MyString",
      department: nil,
      company: nil
    )
  }

  before(:each) do
    assign(:employee, employee)
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(employee), "post" do

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
