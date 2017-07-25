require 'spec_helper'

describe "shops/edit" do
  before(:each) do
    @shop = assign(:shop, stub_model(Shop,
      :number => 1,
      :name => "MyString",
      :town => 1,
      :street => 1,
      :bldg => "MyString",
      :housing => "MyString",
      :floor => "MyString",
      :id_hard => 1,
      :id_stock => 1,
      :business_hours => "MyString",
      :id_provider => 1,
      :phone => "MyString"
    ))
  end

  it "renders the edit shop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do
      assert_select "input#shop_number[name=?]", "shop[number]"
      assert_select "input#shop_name[name=?]", "shop[name]"
      assert_select "input#shop_town[name=?]", "shop[town]"
      assert_select "input#shop_street[name=?]", "shop[street]"
      assert_select "input#shop_bldg[name=?]", "shop[bldg]"
      assert_select "input#shop_housing[name=?]", "shop[housing]"
      assert_select "input#shop_floor[name=?]", "shop[floor]"
      assert_select "input#shop_id_hard[name=?]", "shop[id_hard]"
      assert_select "input#shop_id_stock[name=?]", "shop[id_stock]"
      assert_select "input#shop_business_hours[name=?]", "shop[business_hours]"
      assert_select "input#shop_id_provider[name=?]", "shop[id_provider]"
      assert_select "input#shop_phone[name=?]", "shop[phone]"
    end
  end
end
