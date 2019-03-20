require 'rails_helper'

RSpec.describe "welcomes/show", type: :view do
  before(:each) do
    @welcome = assign(:welcome, Welcome.create!(
      :greeting => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
