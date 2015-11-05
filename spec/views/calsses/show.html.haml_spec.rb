require 'rails_helper'

RSpec.describe "calsses/show", :type => :view do
  before(:each) do
    @calss = assign(:calss, Calss.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
