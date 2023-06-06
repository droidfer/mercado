class TendersController < ApplicationController
  before_action :set_tender, only: %i[ show edit update destroy ]

  def index
    @tenders = Tender.all
  end

  def show
  end

  def new
    @tender = Tender.new
  end

  def edit
  end

  def create
    @tender = Tender.new(tender_params)
    if @tender.save
      redirect_to tender_url(@tender), notice: "Tender was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @tender.update(tender_params)
      redirect_to tender_url(@tender), notice: "Tender was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tender.destroy
    redirect_to tenders_url, notice: "Tender was successfully destroyed."
  end

  private

  def set_tender
    @tender = Tender.find(params[:id])
  end

  def tender_params
    params.require(:tender).permit(:name, :rfq_id, :status)
  end
end
