require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    assign(:product, Product.create!(
      name: "Name",
      code: "Code",
      brand: "Brand",
      manufacturer: "Manufacturer",
      description: "MyText",
      subcategory: nil,
      datasheet: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
