require 'rails_helper'

RSpec.describe "calsses/edit", :type => :view do
  before(:each) do
    @calss = assign(:calss, Calss.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit calss form" do
    render

    assert_select "form[action=?][method=?]", calss_path(@calss), "post" do

      assert_select "input#calss_name[name=?]", "calss[name]"
    end
  end
end
