require 'spec_helper'

describe "cleanings/edit" do
  before(:each) do
    @cleaning = assign(:cleaning, stub_model(Cleaning,
      :user_shop_start => 1,
      :user_shop_end => 1,
      :cenzor => 1,
      :flooring => "MyString",
      :wc => "MyString",
      :shelves => "MyString",
      :storeroom => "MyString",
      :territory => "MyString",
      :household_eq => "MyString",
      :orderinbox => "MyString",
      :orderindoc => "MyString",
      :displayofgoods => "MyString",
      :price_tags => "MyString",
      :tech_eq => "MyString"
    ))
  end

  it "renders the edit cleaning form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cleaning_path(@cleaning), "post" do
      assert_select "input#cleaning_user_shop_start[name=?]", "cleaning[user_shop_start]"
      assert_select "input#cleaning_user_shop_end[name=?]", "cleaning[user_shop_end]"
      assert_select "input#cleaning_cenzor[name=?]", "cleaning[cenzor]"
      assert_select "input#cleaning_flooring[name=?]", "cleaning[flooring]"
      assert_select "input#cleaning_wc[name=?]", "cleaning[wc]"
      assert_select "input#cleaning_shelves[name=?]", "cleaning[shelves]"
      assert_select "input#cleaning_storeroom[name=?]", "cleaning[storeroom]"
      assert_select "input#cleaning_territory[name=?]", "cleaning[territory]"
      assert_select "input#cleaning_household_eq[name=?]", "cleaning[household_eq]"
      assert_select "input#cleaning_orderinbox[name=?]", "cleaning[orderinbox]"
      assert_select "input#cleaning_orderindoc[name=?]", "cleaning[orderindoc]"
      assert_select "input#cleaning_displayofgoods[name=?]", "cleaning[displayofgoods]"
      assert_select "input#cleaning_price_tags[name=?]", "cleaning[price_tags]"
      assert_select "input#cleaning_tech_eq[name=?]", "cleaning[tech_eq]"
    end
  end
end
