require 'rails_helper'

RSpec.describe "goals/new", :type => :view do
  before(:each) do
    assign(:goal, Goal.new(
      :name => "MyString",
      :amount => "9.99",
      :finished => false,
      :contribution => "9.99"
    ))
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", goals_path, "post" do

      assert_select "input#goal_name[name=?]", "goal[name]"

      assert_select "input#goal_amount[name=?]", "goal[amount]"

      assert_select "input#goal_finished[name=?]", "goal[finished]"

      assert_select "input#goal_contribution[name=?]", "goal[contribution]"
    end
  end
end
