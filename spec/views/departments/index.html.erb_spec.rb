require 'spec_helper'

describe "departments/index" do
  before(:each) do
    assign(:departments, [
      stub_model(Department,
        :department_name => "Department Name"
      ),
      stub_model(Department,
        :department_name => "Department Name"
      )
    ])
  end

  it "renders a list of departments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Department Name".to_s, :count => 2
  end
end
