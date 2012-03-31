require 'spec_helper'

describe "streets/index.html.erb" do
  before(:each) do
    assign(:streets, [
      stub_model(Street,
        :street => "Street",
        :region_id => 1,
        :area_id => 1
      ),
      stub_model(Street,
        :street => "Street",
        :region_id => 1,
        :area_id => 1
      )
    ])
  end

  it "renders a list of streets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
