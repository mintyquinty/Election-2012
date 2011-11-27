require 'spec_helper'

describe "candidates/show.html.erb" do
  before(:each) do
    @candidate = assign(:candidate, stub_model(Candidate,
      :first_name => "First Name",
      :last_name => "Last Name",
      :party_id => 1,
      :quote => "MyText",
      :in_race => false,
      :in_race_status => "In Race Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/In Race Status/)
  end
end
