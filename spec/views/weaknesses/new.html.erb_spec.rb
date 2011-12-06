require 'spec_helper'

describe "weaknesses/new.html.erb" do
  before(:each) do
    assign(:weakness, stub_model(Weakness,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new weakness form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weaknesses_path, :method => "post" do
      assert_select "input#weakness_name", :name => "weakness[name]"
      assert_select "input#weakness_description", :name => "weakness[description]"
    end
  end
end
