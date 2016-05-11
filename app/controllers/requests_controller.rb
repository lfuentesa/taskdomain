class RequestsController < ApplicationController
	

	def new
		@brokers = Broker.all
		@request = Request.new
	end

	def create
		@request = Request.new(request_allow_parameters)
		respond_to do |format|
			if @request.save
				format.html { redirect_to @request, notice: 'User was successfully created.' }
	      		format.js   {}
	      		format.json { render json: @request, status: :created, location: @request }
			else
				format.html { render action: "new" }
	      		format.json { render json: @request.errors, status: :unprocessable_entity }
    		end
    	end
    	#redirect_to @customer
	end


	private
	def request_allow_parameters
		params.require(:request).permit(:request_creator, :request_insurance_broker , :request_license_plate, :request_claim_number, :request_sinister_date, :request_trial_date, :request_format_number, :request_process_type, :request_district, :request_office, :request_claimant, :request_log, :request_isactive)
	end
end
