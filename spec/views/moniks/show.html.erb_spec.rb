require 'spec_helper'

describe "moniks/show" do
  before(:each) do
    @monik = assign(:monik, stub_model(Monik,
      :inv_num => "Inv Num",
      :by_doc => "By Doc",
      :by_price => "9.99",
      :monitor_name => "Monitor Name",
      :diagonal => 1,
      :spisan_txt => "MyText",
      :department => nil,
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inv Num/)
    rendered.should match(/By Doc/)
    rendered.should match(/9.99/)
    rendered.should match(/Monitor Name/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
