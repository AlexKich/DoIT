require 'spec_helper'

describe "chats/edit" do
  before(:each) do
    @chat = assign(:chat, stub_model(Chat,
      :content => "MyText",
      :user_post => 1,
      :user_rev => 1,
      :post_read => false
    ))
  end

  it "renders the edit chat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chat_path(@chat), "post" do
      assert_select "textarea#chat_content[name=?]", "chat[content]"
      assert_select "input#chat_user_post[name=?]", "chat[user_post]"
      assert_select "input#chat_user_rev[name=?]", "chat[user_rev]"
      assert_select "input#chat_post_read[name=?]", "chat[post_read]"
    end
  end
end
