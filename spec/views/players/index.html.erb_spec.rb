require 'rails_helper'

RSpec.describe "players/index", :type => :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        :number => 1,
        :name => "Name"
      ),
      Player.create!(
        :number => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
