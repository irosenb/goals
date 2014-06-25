require 'rails_helper'

RSpec.describe "goals/edit", :type => :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :name => "MyString",
      :amount => "9.99",
      :finished => false,
      :contribution => "9.99"
    ))
  end

  it "renders the edit goal form" do
    render

    assert_select "form[action=?][method=?]", goal_path(@goal), "post" do

      assert_select "input#goal_name[name=?]", "goal[name]"

      assert_select "input#goal_amount[name=?]", "goal[amount]"

      assert_select "input#goal_finished[name=?]", "goal[finished]"

      assert_select "input#goal_contribution[name=?]", "goal[contribution]"
    end
  end
end
