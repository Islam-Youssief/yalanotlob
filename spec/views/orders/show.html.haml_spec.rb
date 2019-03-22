require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :meal => "Meal",
      :restaurantName => "Restaurant Name",
      :menuImage => "Menu Image",
      :status => "Status",
      :date => "Date",
      :totalPrice => "Total Price",
      :friends => "Friends",
      :groups => "Groups",
      :items => "Items"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Meal/)
    expect(rendered).to match(/Restaurant Name/)
    expect(rendered).to match(/Menu Image/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Total Price/)
    expect(rendered).to match(/Friends/)
    expect(rendered).to match(/Groups/)
    expect(rendered).to match(/Items/)
  end
end
