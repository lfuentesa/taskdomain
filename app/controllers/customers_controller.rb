class CustomersController < ApplicationController
	def new 
		@customer = Customer.new	
	end

	def show
	end


	def index
		@customers = Customer.all
	end

	def create 
		#render plain: params[:customer].inspect
		@customer = Customer.new(customer_params)
		respond_to do |format|
			if @customer.save
				format.html { redirect_to @customer, notice: 'User was successfully created.' }
	      		format.js   {}
	      		format.json { render json: @customer, status: :created, location: @customer }
			else
				format.html { render action: "new" }
	      		format.json { render json: @user.errors, status: :unprocessable_entity }
    		end
    	end
    	#redirect_to @customer
	end

	private
	def customer_params
		params.require(:customer).permit(:customer_name, :customer_lastname, :customer_email, :customer_phone, :customer_uin)
	end
end


