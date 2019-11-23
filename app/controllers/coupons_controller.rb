class CouponsController < ApplicationController
  
    def index
      @coupons = Coupon.all
    end
  
    def show
      @coupon = Coupon.find(params[:id])
    end
  
    def new
    end
  
    def create
      # Create a new student object
        @coupon= Coupon.new
      # Set the first_name attribute of @student equal to what was entered as #first_name in the form
      @coupon.coupon_code= params[:coupon_code]
      # See above
      @coupon.store= params[:store]
      # Save these attributes to the database
      @coupon.save
  
      #redirect the user to a page that displays their content (the #show path/action)
    #   redirect_to coupon_path(@coupon)
        redirect_to coupon_path(@coupon)
    end
  
  end
  