require 'rails_helper'

RSpec.describe "fundings/new", :type => :view do
  before(:each) do
    assign(:funding, Funding.new(
      :name => "MyString"
    ))
  end

  it "renders new funding form" do
    render

    assert_select "form[action=?][method=?]", fundings_path, "post" do

      assert_select "input#funding_name[name=?]", "funding[name]"
    end
  end
end
