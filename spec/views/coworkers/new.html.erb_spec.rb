require 'spec_helper'

describe "coworkers/new" do
  before(:each) do
    assign(:coworker, stub_model(Coworker,
      :coworker_name => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new coworker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coworkers_path, "post" do
      assert_select "input#coworker_coworker_name[name=?]", "coworker[coworker_name]"
      assert_select "input#coworker_location[name=?]", "coworker[location]"
    end
  end
end
