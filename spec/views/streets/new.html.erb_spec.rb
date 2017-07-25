require 'spec_helper'

describe "streets/new" do
  before(:each) do
    assign(:street, stub_model(Street,
      :street_name => "MyString"
    ).as_new_record)
  end

  it "renders new street form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", streets_path, "post" do
      assert_select "input#street_street_name[name=?]", "street[street_name]"
    end
  end
end
