require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :department => 1,
      :reponsible => 2,
      :subject => "Subject",
      :descr => "MyText",
      :author => 3,
      :doc => "Doc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Subject/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/Doc/)
  end
end
