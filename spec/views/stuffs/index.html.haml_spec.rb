require 'rails_helper'

RSpec.describe "stuffs/index", :type => :view do
  before(:each) do
    assign(:stuffs, [
      Stuff.create!(
        :name => "Name",
        :description => "Description",
        :price => 1.5,
        :in_stock => false,
        :type_id => 1,
        :class_id => 2,
        :user_id => 3
      ),
      Stuff.create!(
        :name => "Name",
        :description => "Description",
        :price => 1.5,
        :in_stock => false,
        :type_id => 1,
        :class_id => 2,
        :user_id => 3
      )
    ])
  end

  it "renders a list of stuffs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
