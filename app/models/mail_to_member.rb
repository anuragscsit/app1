class MailToMember < ActiveRecord::Base
	validates :name, :presence => true
  validates :email, :presence => true 
  validates :content, :presence => true
  after_create :send_library_status_notification

  private

  def send_library_status_notification
    MemberMailer.member_library_status_copy(self).deliver
  end

end
