require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    assign(:employee, Employee.create!(
      name: "Name",
      title: "Title",
      landline: "Landline",
      mobile: "Mobile",
      email: "Email",
      department: nil,
      company: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Landline/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
