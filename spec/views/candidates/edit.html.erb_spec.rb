require 'spec_helper'

describe "candidates/edit.html.erb" do
  before(:each) do
    @candidate = assign(:candidate, stub_model(Candidate,
      :first_name => "MyString",
      :last_name => "MyString",
      :party_id => 1,
      :quote => "MyText",
      :in_race => false,
      :in_race_status => "MyString"
    ))
  end

  it "renders the edit candidate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candidates_path(@candidate), :method => "post" do
      assert_select "input#candidate_first_name", :name => "candidate[first_name]"
      assert_select "input#candidate_last_name", :name => "candidate[last_name]"
      assert_select "input#candidate_party_id", :name => "candidate[party_id]"
      assert_select "textarea#candidate_quote", :name => "candidate[quote]"
      assert_select "input#candidate_in_race", :name => "candidate[in_race]"
      assert_select "input#candidate_in_race_status", :name => "candidate[in_race_status]"
    end
  end
end
