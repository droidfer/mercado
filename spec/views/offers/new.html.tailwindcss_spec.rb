require 'rails_helper'

RSpec.describe "offers/new", type: :view do
  before(:each) do
    assign(:offer, Offer.new(
      tender: nil,
      status: 1,
      price: "9.99"
    ))
  end

  it "renders new offer form" do
    render

    assert_select "form[action=?][method=?]", offers_path, "post" do

      assert_select "input[name=?]", "offer[tender_id]"

      assert_select "input[name=?]", "offer[status]"

      assert_select "input[name=?]", "offer[price]"
    end
  end
end
