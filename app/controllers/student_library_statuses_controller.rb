class StudentLibraryStatusesController < ApplicationController 
	
	def index
		@student_library_statuses = StudentLibraryStatus.all
	end

	def new
		@student_library_status = StudentLibraryStatus.new
	end

	def edit
		@student_library_status = StudentLibraryStatus.find(params[:id])
	end

	def show
		@student_library_status = StudentLibraryStatus.find(params[:id])
	end

	def create 
		@student_library_status = StudentLibraryStatus.new(library_status_params)
		if @student_library_status.save
			redirect_to student_library_statuses_path
		else 
			render 'new'
		end
	end

	def update 
		@student_library_status = StudentLibraryStatus.find(params[:id])
		if @student_library_status.update_attributes(library_status_params)
			redirect_to student_library_statuses_path
		else 
			render 'edit'
		end
	end

	def destroy
		@student_library_status = StudentLibraryStatus.find(params[:id])
		@student_library_status.destroy
		redirect_to student_library_statuses_path
	end

	private

		def library_status_params
			params.require(:student_library_status).permit(:issue_date, :submission_date, :submitted_on, :book_name, :student_id)
		end

end