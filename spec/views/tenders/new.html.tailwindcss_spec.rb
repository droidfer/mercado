require 'rails_helper'

RSpec.describe "tenders/new", type: :view do
  before(:each) do
    assign(:tender, Tender.new(
      name: "MyString",
      rfq_id: "MyString",
      status: 1
    ))
  end

  it "renders new tender form" do
    render

    assert_select "form[action=?][method=?]", tenders_path, "post" do

      assert_select "input[name=?]", "tender[name]"

      assert_select "input[name=?]", "tender[rfq_id]"

      assert_select "input[name=?]", "tender[status]"
    end
  end
end
