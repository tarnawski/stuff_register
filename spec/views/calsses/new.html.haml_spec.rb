require 'rails_helper'

RSpec.describe "calsses/new", :type => :view do
  before(:each) do
    assign(:calss, Calss.new(
      :name => "MyString"
    ))
  end

  it "renders new calss form" do
    render

    assert_select "form[action=?][method=?]", calsses_path, "post" do

      assert_select "input#calss_name[name=?]", "calss[name]"
    end
  end
end
