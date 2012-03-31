require 'spec_helper'

describe "areas/index.html.erb" do
  before(:each) do
    assign(:areas, [
      stub_model(Area,
        :area => "Area",
        :region_id => 1
      ),
      stub_model(Area,
        :area => "Area",
        :region_id => 1
      )
    ])
  end

  it "renders a list of areas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
