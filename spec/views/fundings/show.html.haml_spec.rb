require 'rails_helper'

RSpec.describe "fundings/show", :type => :view do
  before(:each) do
    @funding = assign(:funding, Funding.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
