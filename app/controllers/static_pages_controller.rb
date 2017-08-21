class StaticPagesController < ApplicationController

def home
	if signed_in?
	  @userconfirmedcards = current_user.bitcoins_marked_as_confirm.where(approved: false).all
	  @userapprovedcards = current_user.bitcoins.where(approved: true).all
	end	
end

def dashboard
	@yetapprovedcards = Bitcoin.where(approved: false).all
	@approvedcards = Bitcoin.where(approved: true).all
end

end
