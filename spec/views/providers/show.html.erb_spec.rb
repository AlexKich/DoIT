require 'spec_helper'

describe "providers/show" do
  before(:each) do
    @provider = assign(:provider, stub_model(Provider,
      :name_short => "Name Short",
      :name => "Name",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Short/)
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
  end
end
