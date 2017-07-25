require 'spec_helper'

describe "towns/edit" do
  before(:each) do
    @town = assign(:town, stub_model(Town,
      :town_name => "MyString"
    ))
  end

  it "renders the edit town form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", town_path(@town), "post" do
      assert_select "input#town_town_name[name=?]", "town[town_name]"
    end
  end
end
