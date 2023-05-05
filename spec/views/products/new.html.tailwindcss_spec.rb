require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      code: "MyString",
      brand: "MyString",
      manufacturer: "MyString",
      description: "MyText",
      subcategory: nil,
      datasheet: nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

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
