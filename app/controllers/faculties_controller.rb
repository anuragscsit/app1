class FacultiesController < ApplicationController
	
	def index
		@faculties = Faculty.all
	end

	def new
		@faculty = Faculty.new
	end

	def edit
		@faculty = Faculty.find(params[:id])
	end

	def show
		@faculty = Faculty.find(params[:id])
	end

	def create
		@faculty = Faculty.new(faculty_params)
		if @faculty.save
			redirect_to faculties_path
		else
			render 'new'
		end
	end

	def update
		@faculty = Faculty.find(params[:id])
		if @faculty.update_attributes(faculty_params)
			redirect_to faculties_path
		else
			render 'edit'
		end
	end

	def destroy
		@faculty = Faculty.find(params[:id])
		@faculty.destroy
		redirect_to faculties_path
	end

	private


		def faculty_params
			params.require(:faculty).permit(:name, :email, :contact_1, :contact_2, :employee_id)
		end

end
