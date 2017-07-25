require 'spec_helper'

describe "cleanings/show" do
  before(:each) do
    @cleaning = assign(:cleaning, stub_model(Cleaning,
      :user_shop_start => 1,
      :user_shop_end => 2,
      :cenzor => 3,
      :flooring => "Flooring",
      :wc => "Wc",
      :shelves => "Shelves",
      :storeroom => "Storeroom",
      :territory => "Territory",
      :household_eq => "Household Eq",
      :orderinbox => "Orderinbox",
      :orderindoc => "Orderindoc",
      :displayofgoods => "Displayofgoods",
      :price_tags => "Price Tags",
      :tech_eq => "Tech Eq"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Flooring/)
    rendered.should match(/Wc/)
    rendered.should match(/Shelves/)
    rendered.should match(/Storeroom/)
    rendered.should match(/Territory/)
    rendered.should match(/Household Eq/)
    rendered.should match(/Orderinbox/)
    rendered.should match(/Orderindoc/)
    rendered.should match(/Displayofgoods/)
    rendered.should match(/Price Tags/)
    rendered.should match(/Tech Eq/)
  end
end
