require 'rails_helper'

RSpec.describe "inventories/index", :type => :view do
  before(:each) do
    assign(:inventories, [
      Inventory.create!(
        :stuff_id => 1,
        :in_stock => false,
        :comment => "Comment"
      ),
      Inventory.create!(
        :stuff_id => 1,
        :in_stock => false,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of inventories" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
