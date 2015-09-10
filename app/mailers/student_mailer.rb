class StudentMailer < ApplicationMailer
	def student_library_status_copy(student)
    @student = student
    mail(to: @student.email, subject: 'Here is copy of your library status.')
  end
end
