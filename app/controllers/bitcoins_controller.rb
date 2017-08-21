class BitcoinsController < ApplicationController
  before_action :set_bitcoin, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /bitcoins
  # GET /bitcoins.json
  def index
    @bitcoins = Bitcoin.all
  end

  # GET /bitcoins/1
  # GET /bitcoins/1.json
  def show
  end

  # GET /bitcoins/new
  def new
    @bitcoin = Bitcoin.new
  end

  # GET /bitcoins/1/edit
  def edit
  end

def approve
  @bitcoin = Bitcoin.find(params[:id])
  @bitcoin.update(approved: true)
  redirect_to "/dashboard"
  flash[:notice] = 'You have approved the Card. Kindly make payments within 48 hours as promised'
end

  def confirm
 @bitcoin = Bitcoin.find(params[:id])
  current_user.set_mark :confirm, @bitcoin
  flash[:notice] = 'Transaction reviewed and confirmed. You will receive approval from the admin shortly. Check your email. Thank you.'
   respond_to do |format|
    format.html {redirect_to "/"}
      format.js 
    end
end

  # POST /bitcoins
  # POST /bitcoins.json
  def create
    @bitcoin = Bitcoin.new(bitcoin_params)
    @bitcoin.user = current_user
    respond_to do |format|
      if @bitcoin.save
        format.html { redirect_to bitcoin_steps_path, notice: 'Add images and enter payment details' }
        format.json { render :show, status: :created, location: @bitcoin }
      else
        format.html { render :new }
        format.json { render json: @bitcoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bitcoins/1
  # PATCH/PUT /bitcoins/1.json
  def update
    respond_to do |format|
      if @bitcoin.update(bitcoin_params)
        format.html { redirect_to @bitcoin, notice: 'Bitcoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @bitcoin }
      else
        format.html { render :edit }
        format.json { render json: @bitcoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bitcoins/1
  # DELETE /bitcoins/1.json
  def destroy
    @bitcoin.destroy
    respond_to do |format|
      format.html { redirect_to bitcoins_url, notice: 'Bitcoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bitcoin
      @bitcoin = Bitcoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bitcoin_params
      params.require(:bitcoin).permit(:cardamount, :number, :bitcoinnumber, :terms, 
                                      :approved, :paymentoptions, :bitcointotal, :mobilemtotal, :mmnumber,
                                      :photos_attributes => [:gcpicture])
    end
end


