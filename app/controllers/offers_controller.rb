class OffersController < ApplicationController
  before_action :set_offer, only: %i[ show edit update destroy ]

  def index
    status_set = params[:status]
    if status_set.present?
      @offers = Offer.status(status_set).order(presented_at: :desc)
    else
      @offers = Offer.all.order(presented_at: :desc)
    end
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def edit
  end

  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      redirect_to offer_url(@offer), notice: "Offer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_url(@offer), notice: "Offer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @offer.destroy
    redirect_to offers_url, notice: "Offer was successfully destroyed."
  end

  private
  
  def set_offer
    @offer = Offer.find(params[:id])
  end
  
  def offer_params
    params.require(:offer).permit(:tender_id, :status, :price, :presented_at, proposal: [])
  end
end
