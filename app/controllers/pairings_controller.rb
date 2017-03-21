class PairingsController < ApplicationController



	def create
		pairing = Pairing.new(job_id: params[:job_id], boat_id: params[:boat_id], containers: params[:containers])
		boat = Boat.find(params[:boat_id])

		boat.avail_cont = boat.avail_cont - params[:containers].to_i
		boat.save

		job = Job.find(params[:job_id])
		job.containers = job.containers - params[:containers].to_i

		job.save



		if pairing.save
			redirect_to :back
		else
			redirect_to :back
		end
	end





end
