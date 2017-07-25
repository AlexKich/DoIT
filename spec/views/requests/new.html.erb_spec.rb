require 'spec_helper'

describe "requests/new" do
  before(:each) do
    assign(:request, stub_model(Request,
      :department => 1,
      :reponsible => 1,
      :subject => "MyString",
      :descr => "MyText",
      :author => 1,
      :doc => "MyString"
    ).as_new_record)
  end

  it "renders new request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requests_path, "post" do
      assert_select "input#request_department[name=?]", "request[department]"
      assert_select "input#request_reponsible[name=?]", "request[reponsible]"
      assert_select "input#request_subject[name=?]", "request[subject]"
      assert_select "textarea#request_descr[name=?]", "request[descr]"
      assert_select "input#request_author[name=?]", "request[author]"
      assert_select "input#request_doc[name=?]", "request[doc]"
    end
  end
end
