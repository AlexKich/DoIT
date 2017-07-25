require 'spec_helper'

describe "streets/edit" do
  before(:each) do
    @street = assign(:street, stub_model(Street,
      :street_name => "MyString"
    ))
  end

  it "renders the edit street form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", street_path(@street), "post" do
      assert_select "input#street_street_name[name=?]", "street[street_name]"
    end
  end
end
