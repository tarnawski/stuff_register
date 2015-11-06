require 'rails_helper'

RSpec.describe "inventories/show", :type => :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :stuff_id => 1,
      :in_stock => false,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Comment/)
  end
end
