require 'rails_helper'

RSpec.describe "fundings/edit", :type => :view do
  before(:each) do
    @funding = assign(:funding, Funding.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit funding form" do
    render

    assert_select "form[action=?][method=?]", funding_path(@funding), "post" do

      assert_select "input#funding_name[name=?]", "funding[name]"
    end
  end
end
