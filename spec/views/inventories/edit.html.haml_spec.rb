require 'rails_helper'

RSpec.describe "inventories/edit", :type => :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :stuff_id => 1,
      :in_stock => false,
      :comment => "MyString"
    ))
  end

  it "renders the edit inventory form" do
    render

    assert_select "form[action=?][method=?]", inventory_path(@inventory), "post" do

      assert_select "input#inventory_stuff_id[name=?]", "inventory[stuff_id]"

      assert_select "input#inventory_in_stock[name=?]", "inventory[in_stock]"

      assert_select "input#inventory_comment[name=?]", "inventory[comment]"
    end
  end
end
