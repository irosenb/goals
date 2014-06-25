require 'rails_helper'

RSpec.describe "goals/show", :type => :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :name => "Name",
      :amount => "9.99",
      :finished => false,
      :contribution => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
  end
end
