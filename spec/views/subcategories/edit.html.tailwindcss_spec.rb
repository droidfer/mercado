require 'rails_helper'

RSpec.describe "subcategories/edit", type: :view do
  let(:subcategory) {
    Subcategory.create!(
      name: "MyString",
      description: "MyString",
      category: nil
    )
  }

  before(:each) do
    assign(:subcategory, subcategory)
  end

  it "renders the edit subcategory form" do
    render

    assert_select "form[action=?][method=?]", subcategory_path(subcategory), "post" do

      assert_select "input[name=?]", "subcategory[name]"

      assert_select "input[name=?]", "subcategory[description]"

      assert_select "input[name=?]", "subcategory[category_id]"
    end
  end
end
