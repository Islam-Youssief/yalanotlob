require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :meal => "MyString",
      :restaurantName => "MyString",
      :menuImage => "MyString",
      :status => "MyString",
      :date => "MyString",
      :totalPrice => "MyString",
      :friends => "MyString",
      :groups => "MyString",
      :items => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[meal]"

      assert_select "input[name=?]", "order[restaurantName]"

      assert_select "input[name=?]", "order[menuImage]"

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[date]"

      assert_select "input[name=?]", "order[totalPrice]"

      assert_select "input[name=?]", "order[friends]"

      assert_select "input[name=?]", "order[groups]"

      assert_select "input[name=?]", "order[items]"
    end
  end
end
