class FacultyLibraryStatusesController < ApplicationController

	def index
		@faculty_library_statuses = FacultyLibraryStatus.all
	end

	def new
		@student_library_status = FacultyLibraryStatus.new
	end

	def edit
		@faculty_library_status = FacultyLibraryStatus.find(params[:id])
	end

	def show
		@faculty_library_status = FacultyLibraryStatus.find(params[:id])
	end

	def create 
		@faculty_library_status = FacultyLibraryStatus.new(library_status_params)
		if @faculty_library_status.save
			redirect_to faculty_library_statuses_path
		else 
			render 'new'
		end
	end

	def update 
		@faculty_library_status = FacultyLibraryStatus.find(params[:id])
		if @faculty_library_status.update_attributes(library_status_params)
			redirect_to faculty_library_statuses_path
		else 
			render 'edit'
		end
	end

	def destroy
		@faculty_library_status = FacultyLibraryStatus.find(params[:id])
		@faculty_library_status.destroy
		redirect_to faculty_library_statuses_path
	end

	private

		def library_status_params
			params.require(:faculty_library_status).permit(:issue_date, :submission_date, :submitted_on, :book_id, :faculty_id)
		end

end