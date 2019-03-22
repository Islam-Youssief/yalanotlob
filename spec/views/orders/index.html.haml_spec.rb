require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :meal => "Meal",
        :restaurantName => "Restaurant Name",
        :menuImage => "Menu Image",
        :status => "Status",
        :date => "Date",
        :totalPrice => "Total Price",
        :friends => "Friends",
        :groups => "Groups",
        :items => "Items"
      ),
      Order.create!(
        :meal => "Meal",
        :restaurantName => "Restaurant Name",
        :menuImage => "Menu Image",
        :status => "Status",
        :date => "Date",
        :totalPrice => "Total Price",
        :friends => "Friends",
        :groups => "Groups",
        :items => "Items"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Meal".to_s, :count => 2
    assert_select "tr>td", :text => "Restaurant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Menu Image".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Total Price".to_s, :count => 2
    assert_select "tr>td", :text => "Friends".to_s, :count => 2
    assert_select "tr>td", :text => "Groups".to_s, :count => 2
    assert_select "tr>td", :text => "Items".to_s, :count => 2
  end
end
