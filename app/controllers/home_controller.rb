class HomeController < ApplicationController

	def index
	end

	def member
    @member = MailToMember.new
  end
  
  def member_library_status
    @member = MailToMember.new(member_library_status_params)
    if @member.save
      flash[:notice] = "Library status has been send."
      redirect_to member_path
    else
      render :action => 'member' 
    end
  end

  private

  def member_library_status_params
    params.require(:mail_to_member).permit(:name, :email, :content)
  end
	
end