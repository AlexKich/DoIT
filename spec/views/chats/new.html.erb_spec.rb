require 'spec_helper'

describe "chats/new" do
  before(:each) do
    assign(:chat, stub_model(Chat,
      :content => "MyText",
      :user_post => 1,
      :user_rev => 1,
      :post_read => false
    ).as_new_record)
  end

  it "renders new chat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chats_path, "post" do
      assert_select "textarea#chat_content[name=?]", "chat[content]"
      assert_select "input#chat_user_post[name=?]", "chat[user_post]"
      assert_select "input#chat_user_rev[name=?]", "chat[user_rev]"
      assert_select "input#chat_post_read[name=?]", "chat[post_read]"
    end
  end
end
