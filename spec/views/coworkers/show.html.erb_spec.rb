require 'spec_helper'

describe "coworkers/show" do
  before(:each) do
    @coworker = assign(:coworker, stub_model(Coworker,
      :coworker_name => "Coworker Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Coworker Name/)
    rendered.should match(/Location/)
  end
end
