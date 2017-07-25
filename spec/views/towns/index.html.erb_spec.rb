require 'spec_helper'

describe "towns/index" do
  before(:each) do
    assign(:towns, [
      stub_model(Town,
        :town_name => "Town Name"
      ),
      stub_model(Town,
        :town_name => "Town Name"
      )
    ])
  end

  it "renders a list of towns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Town Name".to_s, :count => 2
  end
end
