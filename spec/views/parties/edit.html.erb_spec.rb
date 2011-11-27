require 'spec_helper'

describe "parties/edit.html.erb" do
  before(:each) do
    @party = assign(:party, stub_model(Party,
      :name => "MyString",
      :abbreviation => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit party form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parties_path(@party), :method => "post" do
      assert_select "input#party_name", :name => "party[name]"
      assert_select "input#party_abbreviation", :name => "party[abbreviation]"
      assert_select "input#party_color", :name => "party[color]"
    end
  end
end
