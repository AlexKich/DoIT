require 'spec_helper'

describe "moniks/new" do
  before(:each) do
    assign(:monik, stub_model(Monik,
      :inv_num => "MyString",
      :by_doc => "MyString",
      :by_price => "9.99",
      :monitor_name => "MyString",
      :diagonal => 1,
      :spisan_txt => "MyText",
      :department => nil,
      :company => nil
    ).as_new_record)
  end

  it "renders new monik form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", moniks_path, "post" do
      assert_select "input#monik_inv_num[name=?]", "monik[inv_num]"
      assert_select "input#monik_by_doc[name=?]", "monik[by_doc]"
      assert_select "input#monik_by_price[name=?]", "monik[by_price]"
      assert_select "input#monik_monitor_name[name=?]", "monik[monitor_name]"
      assert_select "input#monik_diagonal[name=?]", "monik[diagonal]"
      assert_select "textarea#monik_spisan_txt[name=?]", "monik[spisan_txt]"
      assert_select "input#monik_department[name=?]", "monik[department]"
      assert_select "input#monik_company[name=?]", "monik[company]"
    end
  end
end
