class ApprovalMailer < ApplicationMailer
   default from: "alerts@itunescash.io"

	def approval_notification(user, bitcoin)
  	@user = user
  	@bitcoin = bitcoin
  	mail to: user.email , subject: "[iTunesCash] Your iTunesCash is on it's Way!!"
  end
end
