require 'spec_helper'

describe "parties/index.html.erb" do
  before(:each) do
    assign(:parties, [
      stub_model(Party,
        :name => "Name",
        :abbreviation => "Abbreviation",
        :color => "Color"
      ),
      stub_model(Party,
        :name => "Name",
        :abbreviation => "Abbreviation",
        :color => "Color"
      )
    ])
  end

  it "renders a list of parties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abbreviation".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
