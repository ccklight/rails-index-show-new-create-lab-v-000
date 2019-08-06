class CouponsController < ApplicationController 

    def index 
        @coupons = Coupon.all
        #All of the coupons stored in instance variable
    end  

    def show
        #Isolate/find individual coupon by id
        @coupon = Coupon.find(params[:id]
    end 

    def new 
    end

    def create
        # Instance of coupon = a new coupon
        @coupon = Coupon.new 
        #Pull params from coupon_code 
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        #Pull params from coupon_store
        @coupon[:store] = params[:coupon][:store] 
        # Save the instance of the coupon
        @coupon.save
        #Re-direct user to coupon_path
        redirect_to coupon_path(@coupon) 
    end



end 