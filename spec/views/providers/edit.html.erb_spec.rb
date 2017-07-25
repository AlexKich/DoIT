require 'spec_helper'

describe "providers/edit" do
  before(:each) do
    @provider = assign(:provider, stub_model(Provider,
      :name_short => "MyString",
      :name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit provider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", provider_path(@provider), "post" do
      assert_select "input#provider_name_short[name=?]", "provider[name_short]"
      assert_select "input#provider_name[name=?]", "provider[name]"
      assert_select "input#provider_phone[name=?]", "provider[phone]"
    end
  end
end
