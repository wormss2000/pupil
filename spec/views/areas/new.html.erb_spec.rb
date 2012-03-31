require 'spec_helper'

describe "areas/new.html.erb" do
  before(:each) do
    assign(:area, stub_model(Area,
      :area => "MyString",
      :region_id => 1
    ).as_new_record)
  end

  it "renders new area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => areas_path, :method => "post" do
      assert_select "input#area_area", :name => "area[area]"
      assert_select "input#area_region_id", :name => "area[region_id]"
    end
  end
end
