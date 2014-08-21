require 'spec_helper'

describe "coworkers/index" do
  before(:each) do
    assign(:coworkers, [
      stub_model(Coworker,
        :coworker_name => "Coworker Name",
        :location => "Location"
      ),
      stub_model(Coworker,
        :coworker_name => "Coworker Name",
        :location => "Location"
      )
    ])
  end

  it "renders a list of coworkers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Coworker Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
