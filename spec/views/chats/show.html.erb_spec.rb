require 'spec_helper'

describe "chats/show" do
  before(:each) do
    @chat = assign(:chat, stub_model(Chat,
      :content => "MyText",
      :user_post => 1,
      :user_rev => 2,
      :post_read => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
