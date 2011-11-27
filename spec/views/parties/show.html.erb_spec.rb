require 'spec_helper'

describe "parties/show.html.erb" do
  before(:each) do
    @party = assign(:party, stub_model(Party,
      :name => "Name",
      :abbreviation => "Abbreviation",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abbreviation/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
  end
end
