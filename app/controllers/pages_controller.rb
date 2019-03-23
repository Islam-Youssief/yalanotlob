class PagesController < ApplicationController
    def index
        @orders = current_user.orders
        @firendsNotify = current_user.user_friends;
        @notify = current_user.invited_members;
    end
end
