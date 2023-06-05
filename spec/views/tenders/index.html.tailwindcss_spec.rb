require 'rails_helper'

RSpec.describe "tenders/index", type: :view do
  before(:each) do
    assign(:tenders, [
      Tender.create!(
        name: "Name",
        rfq_id: "Rfq",
        status: 2
      ),
      Tender.create!(
        name: "Name",
        rfq_id: "Rfq",
        status: 2
      )
    ])
  end

  it "renders a list of tenders" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rfq".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
