require 'spec_helper'

describe "shops/show" do
  before(:each) do
    @shop = assign(:shop, stub_model(Shop,
      :number => 1,
      :name => "Name",
      :town => 2,
      :street => 3,
      :bldg => "Bldg",
      :housing => "Housing",
      :floor => "Floor",
      :id_hard => 4,
      :id_stock => 5,
      :business_hours => "Business Hours",
      :id_provider => 6,
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Bldg/)
    rendered.should match(/Housing/)
    rendered.should match(/Floor/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Business Hours/)
    rendered.should match(/6/)
    rendered.should match(/Phone/)
  end
end
