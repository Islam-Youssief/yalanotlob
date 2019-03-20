require 'rails_helper'

RSpec.describe "welcomes/new", type: :view do
  before(:each) do
    assign(:welcome, Welcome.new(
      :greeting => "MyText"
    ))
  end

  it "renders new welcome form" do
    render

    assert_select "form[action=?][method=?]", welcomes_path, "post" do

      assert_select "textarea[name=?]", "welcome[greeting]"
    end
  end
end
