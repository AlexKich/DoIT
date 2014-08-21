require 'spec_helper'

describe "coworkers/edit" do
  before(:each) do
    @coworker = assign(:coworker, stub_model(Coworker,
      :coworker_name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit coworker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coworker_path(@coworker), "post" do
      assert_select "input#coworker_coworker_name[name=?]", "coworker[coworker_name]"
      assert_select "input#coworker_location[name=?]", "coworker[location]"
    end
  end
end
