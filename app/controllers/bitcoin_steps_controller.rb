class BitcoinStepsController < ApplicationController
	include Wicked::Wizard
  steps :payments
  
  def show
  	@user = current_user
    @bitcoin = current_user.bitcoins.last
    @bitcoin.photos.new
    render_wizard
  end
  
  def update
    @bitcoin = current_user.bitcoins.last  
    if @bitcoin.update(bitcoin_params)
        if params[:photos_attributes]
          params[:photos_attributes].each do |photo|
            @bitcoin.photos.create(gcpicture: photo[:gcpicture])
          end
        end
        redirect_to @bitcoin
    end
  end
  
private


    # Never trust parameters from the scary internet, only allow the white list through.
    def bitcoin_params
      params.require(:bitcoin).permit(:cardamount, :number, :user_id, :bitcoinnumber, :mobilemoneyname, :mobilemoneynumber, :terms, :photos_attributes => [:gcpicture])
    end

  
end

