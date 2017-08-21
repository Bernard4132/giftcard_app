class CardMailer < ApplicationMailer
	default from: "cardnotification@itunescash.io"

	def cardupload_notification(user, bitcoin)
  	@user = user
  	@bitcoin = bitcoin
  	mail to: user.email , subject: "[Giftcard Cash] #{@bitcoin.user.firstname} Sent a gift card"
  end
end
