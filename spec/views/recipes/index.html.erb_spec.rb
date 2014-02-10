require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :name => "Name",
        :time => 1,
        :difficulty => "Difficulty",
        :instructions => "Instructions"
      ),
      stub_model(Recipe,
        :name => "Name",
        :time => 1,
        :difficulty => "Difficulty",
        :instructions => "Instructions"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Difficulty".to_s, :count => 2
    assert_select "tr>td", :text => "Instructions".to_s, :count => 2
  end
end
