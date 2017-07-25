require 'spec_helper'

describe "cleanings/index" do
  before(:each) do
    assign(:cleanings, [
      stub_model(Cleaning,
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
      ),
      stub_model(Cleaning,
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
      )
    ])
  end

  it "renders a list of cleanings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Flooring".to_s, :count => 2
    assert_select "tr>td", :text => "Wc".to_s, :count => 2
    assert_select "tr>td", :text => "Shelves".to_s, :count => 2
    assert_select "tr>td", :text => "Storeroom".to_s, :count => 2
    assert_select "tr>td", :text => "Territory".to_s, :count => 2
    assert_select "tr>td", :text => "Household Eq".to_s, :count => 2
    assert_select "tr>td", :text => "Orderinbox".to_s, :count => 2
    assert_select "tr>td", :text => "Orderindoc".to_s, :count => 2
    assert_select "tr>td", :text => "Displayofgoods".to_s, :count => 2
    assert_select "tr>td", :text => "Price Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Tech Eq".to_s, :count => 2
  end
end
