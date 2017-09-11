class StaticPagesController < ApplicationController

def home
	if signed_in?
	  @userconfirmedcards = (current_user.bitcoins_marked_as_confirm.where(approved: false).where(terms: true).all) - (current_user.bitcoins.where(declined: true).all)
	  @userapprovedcards = current_user.bitcoins.where(approved: true).all
	  @userdeclinedcards = current_user.bitcoins.where(declined: true).all
	end	
end

def dashboard
	if current_user.admin?
	@yetapprovedcards = (Bitcoin.where(approved: false).where(terms: true).all) - (Bitcoin.where(declined: true).all)
	@approvedcards = Bitcoin.where(approved: true).all
	@declinedcards = Bitcoin.where(declined: true).all
    end
end

def about
	
end

def contact
	
end

def terms
	
end

end
