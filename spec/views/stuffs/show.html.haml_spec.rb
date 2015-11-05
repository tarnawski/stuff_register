require 'rails_helper'

RSpec.describe "stuffs/show", :type => :view do
  before(:each) do
    @stuff = assign(:stuff, Stuff.create!(
      :name => "Name",
      :description => "Description",
      :price => 1.5,
      :in_stock => false,
      :type_id => 1,
      :class_id => 2,
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
