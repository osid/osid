require 'spec_helper'

describe "weaknesses/edit.html.erb" do
  before(:each) do
    @weakness = assign(:weakness, stub_model(Weakness,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit weakness form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weaknesses_path(@weakness), :method => "post" do
      assert_select "input#weakness_name", :name => "weakness[name]"
      assert_select "input#weakness_description", :name => "weakness[description]"
    end
  end
end
