require 'rails_helper'

RSpec.describe "calsses/index", :type => :view do
  before(:each) do
    assign(:calsses, [
      Calss.create!(
        :name => "Name"
      ),
      Calss.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of calsses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
