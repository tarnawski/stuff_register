require 'rails_helper'

RSpec.describe "fundings/index", :type => :view do
  before(:each) do
    assign(:fundings, [
      Funding.create!(
        :name => "Name"
      ),
      Funding.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of fundings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
