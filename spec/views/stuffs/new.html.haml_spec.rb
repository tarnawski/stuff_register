require 'rails_helper'

RSpec.describe "stuffs/new", :type => :view do
  before(:each) do
    assign(:stuff, Stuff.new(
      :name => "MyString",
      :description => "MyString",
      :price => 1.5,
      :in_stock => false,
      :type_id => 1,
      :class_id => 1,
      :user_id => 1
    ))
  end

  it "renders new stuff form" do
    render

    assert_select "form[action=?][method=?]", stuffs_path, "post" do

      assert_select "input#stuff_name[name=?]", "stuff[name]"

      assert_select "input#stuff_description[name=?]", "stuff[description]"

      assert_select "input#stuff_price[name=?]", "stuff[price]"

      assert_select "input#stuff_in_stock[name=?]", "stuff[in_stock]"

      assert_select "input#stuff_type_id[name=?]", "stuff[type_id]"

      assert_select "input#stuff_class_id[name=?]", "stuff[class_id]"

      assert_select "input#stuff_user_id[name=?]", "stuff[user_id]"
    end
  end
end
