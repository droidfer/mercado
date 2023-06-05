require 'rails_helper'

RSpec.describe "offers/index", type: :view do
  before(:each) do
    assign(:offers, [
      Offer.create!(
        tender: nil,
        status: 2,
        price: "9.99"
      ),
      Offer.create!(
        tender: nil,
        status: 2,
        price: "9.99"
      )
    ])
  end

  it "renders a list of offers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
