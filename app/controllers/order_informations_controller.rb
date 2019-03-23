class OrderInformationsController < ApplicationController

    before_action :get_order, only: [:index, :create]

    def index
        @notify = current_user.invited_members;
        @joined_members = @order.order_informations.joins(:user).select(:name, :email, :user_id).distinct
    end

    def create
        @notify = current_user.invited_members;
        @user = current_user
        if @user.id == get_order_params()[:user_id].to_i
            unless @order
                redirect_to orders_path() and return
            end
            @order.order_informations.create(get_order_params)
        end
        redirect_to order_path(@order) and return
    end

    private
    def get_order
        @order = Order.find_by(id: params[:order_id])
        @notify = current_user.invited_members;
    end

    def get_order_params
        params.require(:order_informations).permit(:user_id, :order_id, :item_name, :item_price, :amount, :comment)
    end
end
