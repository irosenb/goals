require 'rails_helper'

RSpec.describe "goals/index", :type => :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        :name => "Name",
        :amount => "9.99",
        :finished => false,
        :contribution => "9.99"
      ),
      Goal.create!(
        :name => "Name",
        :amount => "9.99",
        :finished => false,
        :contribution => "9.99"
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
