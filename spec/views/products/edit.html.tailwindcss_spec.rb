require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      code: "MyString",
      brand: "MyString",
      manufacturer: "MyString",
      description: "MyText",
      subcategory: nil,
      datasheet: nil
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[code]"

      assert_select "input[name=?]", "product[brand]"

      assert_select "input[name=?]", "product[manufacturer]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[subcategory_id]"

      assert_select "input[name=?]", "product[datasheet]"
    end
  end
end
