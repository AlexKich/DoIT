require 'spec_helper'

describe "towns/new" do
  before(:each) do
    assign(:town, stub_model(Town,
      :town_name => "MyString"
    ).as_new_record)
  end

  it "renders new town form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", towns_path, "post" do
      assert_select "input#town_town_name[name=?]", "town[town_name]"
    end
  end
end
