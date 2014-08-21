require 'spec_helper'

describe "moniks/index" do
  before(:each) do
    assign(:moniks, [
      stub_model(Monik,
        :inv_num => "Inv Num",
        :by_doc => "By Doc",
        :by_price => "9.99",
        :monitor_name => "Monitor Name",
        :diagonal => 1,
        :spisan_txt => "MyText",
        :department => nil,
        :company => nil
      ),
      stub_model(Monik,
        :inv_num => "Inv Num",
        :by_doc => "By Doc",
        :by_price => "9.99",
        :monitor_name => "Monitor Name",
        :diagonal => 1,
        :spisan_txt => "MyText",
        :department => nil,
        :company => nil
      )
    ])
  end

  it "renders a list of moniks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inv Num".to_s, :count => 2
    assert_select "tr>td", :text => "By Doc".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Monitor Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
