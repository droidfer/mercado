require 'rails_helper'

RSpec.describe "offers/show", type: :view do
  before(:each) do
    assign(:offer, Offer.create!(
      tender: nil,
      status: 2,
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end
