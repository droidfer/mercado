require 'rails_helper'

RSpec.describe "offers/edit", type: :view do
  let(:offer) {
    Offer.create!(
      tender: nil,
      status: 1,
      price: "9.99"
    )
  }

  before(:each) do
    assign(:offer, offer)
  end

  it "renders the edit offer form" do
    render

    assert_select "form[action=?][method=?]", offer_path(offer), "post" do

      assert_select "input[name=?]", "offer[tender_id]"

      assert_select "input[name=?]", "offer[status]"

      assert_select "input[name=?]", "offer[price]"
    end
  end
end
