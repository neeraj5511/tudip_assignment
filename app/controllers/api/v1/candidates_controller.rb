class Api::V1::CandidatesController < ApplicationController
	def index
		sortable = params[:sort].present? ? "#{params[:sort]} #{sort_direction}" : 'created_at desc'
        @candidate = Candidate.filter(params.slice(:email, :name))
        @candidate = @candidate.order(sortable)
        if @candidate.present?
			render json: @candidate.paginate(page: params[:page], per_page: 3)
		else
			render json: {message: "Record not found"}
		end
	end

	def show
		@candidate = Candidate.find(param[:id])
		render json: @candidate
	end

	def create
		@candidate = Candidate.new(candidate_params)
		if @candidate.save
	      render :json => {candidate: @candidate, 'message' => 'Candidate is successfully Created'}
	    else
	      render json: @candidate.errors, status: :unprocessable_entity 
	    end
	end

	def update
		@candidate = Candidate.find(params[:id])
		if @candidate
			@candidate.update(candidate_params)
			render json: {message: "Candidate updated successfully"}
		else
			render json: {error: "something went wromg"}, status: 400
		end
	end

	private

	def candidate_params
		params.require(:candidate).permit(:name, :phone_number, :email, :address1, :address2, :city, :state, :zipcode)
	end

	def sort_direction
	  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	end
end
