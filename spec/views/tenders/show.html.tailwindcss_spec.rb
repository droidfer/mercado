require 'rails_helper'

RSpec.describe "tenders/show", type: :view do
  before(:each) do
    assign(:tender, Tender.create!(
      name: "Name",
      rfq_id: "Rfq",
      status: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Rfq/)
    expect(rendered).to match(/2/)
  end
end
