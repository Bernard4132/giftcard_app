class ApprovalMailer < ApplicationMailer
   default from: "alerts@itunescash.io"

	def approval_notification(user, bitcoin)
  	@user = user
  	@bitcoin = bitcoin
  	mail to: user.email , subject: "[Itunes Cash] Your Gift card has been Approved!"
  end
end
