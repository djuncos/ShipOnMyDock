class JobsController < ApplicationController


	def show

		@boats = Boat.all
		@job = Job.find(params[:id])

	end

	def index

		@jobs = Job.all

	end

	def edit
		@job = Job.find(params[:id])



  	end

	def update
	    @job = Job.find(params[:id])


	    if @job.update_attributes(job_params)
	      flash[:boat] = "Job was successfully updated."
	      redirect_to @job
	    else
	      render 'edit'
	    end
  	end

	# def create
	#    @pairing = current_user.boats.new(job_params)
	 
	#  	if @boat.save
	#  		flash[:boat] = "New boat was successfully logged."
	#  		redirect_to '/'
	#  	end
 # 	end



	private
	    

	    def job_params
	      params.require(:job).permit( :description, :origin, :destination, :cost, :containers, :status)
	    end


end