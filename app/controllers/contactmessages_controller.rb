class ContactmessagesController < ApplicationController
  before_action :set_contactmessage, only: %i[ create ]

  # GET /contactmessages
  def index
    @contactmessages = Contactmessage.all

    render json: @contactmessages
  end

  # GET /contactmessages/1
  def show
    render json: @contactmessage
  end

  # POST /contactmessages
  def create
    @contactmessage = Contactmessage.new(contactmessage_params)

    if @contactmessage.save
      render json: @contactmessage, status: :created, location: @contactmessage
    else
      render json: @contactmessage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contactmessages/1
  def update
    if @contactmessage.update(contactmessage_params)
      render json: @contactmessage
    else
      render json: @contactmessage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contactmessages/1
  def destroy
    @contactmessage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactmessage
      @contactmessage = Contactmessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contactmessage_params
      params.require(:contactmessage).permit(:first_name, :last_name, :email, :phone, :message)
    end
end
