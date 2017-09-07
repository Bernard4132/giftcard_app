class ConfirmMailer < ApplicationMailer
	 default from: "alerts@itunescash.io"

	def confirm_notification(user, bitcoin)
  	@user = user
  	@bitcoin = bitcoin
  	mail to: user.email , subject: " [iTunesCash] Your card(s) has been Submitted for Cashout!!"
  end
end
