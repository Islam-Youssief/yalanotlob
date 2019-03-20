require 'rails_helper'

RSpec.describe "welcomes/index", type: :view do
  before(:each) do
    assign(:welcomes, [
      Welcome.create!(
        :greeting => "MyText"
      ),
      Welcome.create!(
        :greeting => "MyText"
      )
    ])
  end

  it "renders a list of welcomes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
