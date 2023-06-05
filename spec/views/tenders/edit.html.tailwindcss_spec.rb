require 'rails_helper'

RSpec.describe "tenders/edit", type: :view do
  let(:tender) {
    Tender.create!(
      name: "MyString",
      rfq_id: "MyString",
      status: 1
    )
  }

  before(:each) do
    assign(:tender, tender)
  end

  it "renders the edit tender form" do
    render

    assert_select "form[action=?][method=?]", tender_path(tender), "post" do

      assert_select "input[name=?]", "tender[name]"

      assert_select "input[name=?]", "tender[rfq_id]"

      assert_select "input[name=?]", "tender[status]"
    end
  end
end
