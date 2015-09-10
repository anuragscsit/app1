class MemberMailer < ApplicationMailer
	def member_library_status_copy(member)
    @member = member
    mail(to: @member.email, subject: 'Here is copy of your library status.')
  end
end
