require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "Name",
      :time => 1,
      :difficulty => "Difficulty",
      :instructions => "Instructions",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Difficulty/)
    rendered.should match(/Instructions/)
    rendered.should match(/2/)
  end
end
