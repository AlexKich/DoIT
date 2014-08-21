require 'spec_helper'

describe "hardwares/show" do
  before(:each) do
    @hardware = assign(:hardware, stub_model(Hardware,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inv Num/)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/By Doc/)
    rendered.should match(/9.99/)
    rendered.should match(/Model Name/)
    rendered.should match(/false/)
    rendered.should match(/Cpu/)
    rendered.should match(/Memory/)
    rendered.should match(/Hdd/)
    rendered.should match(/Keyboard/)
    rendered.should match(/Mouse/)
    rendered.should match(/Speaker/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
