require 'spec_helper'

describe "regions/index.html.erb" do
  before(:each) do
    assign(:regions, [
      stub_model(Region,
        :region => "Region"
      ),
      stub_model(Region,
        :region => "Region"
      )
    ])
  end

  it "renders a list of regions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Region".to_s, :count => 2
  end
end
