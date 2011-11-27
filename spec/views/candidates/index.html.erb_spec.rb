require 'spec_helper'

describe "candidates/index.html.erb" do
  before(:each) do
    assign(:candidates, [
      stub_model(Candidate,
        :first_name => "First Name",
        :last_name => "Last Name",
        :party_id => 1,
        :quote => "MyText",
        :in_race => false,
        :in_race_status => "In Race Status"
      ),
      stub_model(Candidate,
        :first_name => "First Name",
        :last_name => "Last Name",
        :party_id => 1,
        :quote => "MyText",
        :in_race => false,
        :in_race_status => "In Race Status"
      )
    ])
  end

  it "renders a list of candidates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "In Race Status".to_s, :count => 2
  end
end
