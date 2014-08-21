require 'spec_helper'

describe "hardwares/new" do
  before(:each) do
    assign(:hardware, stub_model(Hardware,
      :inv_num => "MyString",
      :company => nil,
      :department_id => 1,
      :by_doc => "MyString",
      :by_price => "9.99",
      :model_name => "MyString",
      :notebook => false,
      :cpu => "MyString",
      :memory => "MyString",
      :hdd => "MyString",
      :keyboard => "MyString",
      :mouse => "MyString",
      :speaker => "MyString",
      :spisan_txt => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new hardware form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hardwares_path, "post" do
      assert_select "input#hardware_inv_num[name=?]", "hardware[inv_num]"
      assert_select "input#hardware_company[name=?]", "hardware[company]"
      assert_select "input#hardware_department_id[name=?]", "hardware[department_id]"
      assert_select "input#hardware_by_doc[name=?]", "hardware[by_doc]"
      assert_select "input#hardware_by_price[name=?]", "hardware[by_price]"
      assert_select "input#hardware_model_name[name=?]", "hardware[model_name]"
      assert_select "input#hardware_notebook[name=?]", "hardware[notebook]"
      assert_select "input#hardware_cpu[name=?]", "hardware[cpu]"
      assert_select "input#hardware_memory[name=?]", "hardware[memory]"
      assert_select "input#hardware_hdd[name=?]", "hardware[hdd]"
      assert_select "input#hardware_keyboard[name=?]", "hardware[keyboard]"
      assert_select "input#hardware_mouse[name=?]", "hardware[mouse]"
      assert_select "input#hardware_speaker[name=?]", "hardware[speaker]"
      assert_select "textarea#hardware_spisan_txt[name=?]", "hardware[spisan_txt]"
      assert_select "input#hardware_user_id[name=?]", "hardware[user_id]"
    end
  end
end
