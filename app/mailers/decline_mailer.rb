class DeclineMailer < ApplicationMailer
	default from: "alerts@itunescash.io"

	def decline_notification(user, bitcoin)
  	@user = user
  	@bitcoin = bitcoin
  	mail to: user.email , subject: "[iTunesCash] Your card(s) couldn't Cashout!"
  end
end
