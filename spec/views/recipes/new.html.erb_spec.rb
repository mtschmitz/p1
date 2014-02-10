require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :time => 1,
      :difficulty => "MyString",
      :instructions => "MyString"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipes_path, "post" do
      assert_select "input#recipe_name[name=?]", "recipe[name]"
      assert_select "input#recipe_time[name=?]", "recipe[time]"
      assert_select "input#recipe_difficulty[name=?]", "recipe[difficulty]"
      assert_select "input#recipe_instructions[name=?]", "recipe[instructions]"
    end
  end
end
