class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def show
		@student = Student.find(params[:id])
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			StudentMailer.welcome_email(@student).deliver_now
			redirect_to students_path
		else
			render 'new'
		end
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to students_path
		else
			render 'edit'
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end

	private


		def student_params
			params.require(:student).permit(:member_id, :enrollment_no, :name, :contact, :adderss, :section_id)
		end

end