require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        name: "Name",
        title: "Title",
        landline: "Landline",
        mobile: "Mobile",
        email: "Email",
        department: nil,
        company: nil
      ),
      Employee.create!(
        name: "Name",
        title: "Title",
        landline: "Landline",
        mobile: "Mobile",
        email: "Email",
        department: nil,
        company: nil
      )
    ])
  end

  it "renders a list of employees" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Landline".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Mobile".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
