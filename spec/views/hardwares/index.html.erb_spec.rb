require 'spec_helper'

describe "hardwares/index" do
  before(:each) do
    assign(:hardwares, [
      stub_model(Hardware,
        :inv_num => "Inv Num",
        :company => nil,
        :department_id => 1,
        :by_doc => "By Doc",
        :by_price => "9.99",
        :model_name => "Model Name",
        :notebook => false,
        :cpu => "Cpu",
        :memory => "Memory",
        :hdd => "Hdd",
        :keyboard => "Keyboard",
        :mouse => "Mouse",
        :speaker => "Speaker",
        :spisan_txt => "MyText",
        :user_id => 2
      ),
      stub_model(Hardware,
        :inv_num => "Inv Num",
        :company => nil,
        :department_id => 1,
        :by_doc => "By Doc",
        :by_price => "9.99",
        :model_name => "Model Name",
        :notebook => false,
        :cpu => "Cpu",
        :memory => "Memory",
        :hdd => "Hdd",
        :keyboard => "Keyboard",
        :mouse => "Mouse",
        :speaker => "Speaker",
        :spisan_txt => "MyText",
        :user_id => 2
      )
    ])
  end

  it "renders a list of hardwares" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inv Num".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "By Doc".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Model Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Cpu".to_s, :count => 2
    assert_select "tr>td", :text => "Memory".to_s, :count => 2
    assert_select "tr>td", :text => "Hdd".to_s, :count => 2
    assert_select "tr>td", :text => "Keyboard".to_s, :count => 2
    assert_select "tr>td", :text => "Mouse".to_s, :count => 2
    assert_select "tr>td", :text => "Speaker".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
