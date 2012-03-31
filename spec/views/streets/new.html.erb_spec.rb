require 'spec_helper'

describe "streets/new.html.erb" do
  before(:each) do
    assign(:street, stub_model(Street,
      :street => "MyString",
      :region_id => 1,
      :area_id => 1
    ).as_new_record)
  end

  it "renders new street form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => streets_path, :method => "post" do
      assert_select "input#street_street", :name => "street[street]"
      assert_select "input#street_region_id", :name => "street[region_id]"
      assert_select "input#street_area_id", :name => "street[area_id]"
    end
  end
end
