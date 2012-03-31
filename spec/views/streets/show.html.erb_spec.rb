require 'spec_helper'

describe "streets/show.html.erb" do
  before(:each) do
    @street = assign(:street, stub_model(Street,
      :street => "Street",
      :region_id => 1,
      :area_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
