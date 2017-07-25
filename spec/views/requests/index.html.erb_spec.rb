require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :department => 1,
        :reponsible => 2,
        :subject => "Subject",
        :descr => "MyText",
        :author => 3,
        :doc => "Doc"
      ),
      stub_model(Request,
        :department => 1,
        :reponsible => 2,
        :subject => "Subject",
        :descr => "MyText",
        :author => 3,
        :doc => "Doc"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Doc".to_s, :count => 2
  end
end
