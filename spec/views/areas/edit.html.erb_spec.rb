require 'spec_helper'

describe "areas/edit.html.erb" do
  before(:each) do
    @area = assign(:area, stub_model(Area,
      :area => "MyString",
      :region_id => 1
    ))
  end

  it "renders the edit area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => areas_path(@area), :method => "post" do
      assert_select "input#area_area", :name => "area[area]"
      assert_select "input#area_region_id", :name => "area[region_id]"
    end
  end
end
