class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: %i[ show edit update destroy ]

  def index
    @subcategories = Subcategory.all
  end

  def show
  end

  def new
    @subcategory = Subcategory.new
  end

  def edit
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)

    if @subcategory.save
      redirect_to subcategory_url(@subcategory), notice: "Subcategory was successfully created."
    else
      render :new, status: :unprocessable_entity
    end

  end

  def update
    if @subcategory.update(subcategory_params)
      redirect_to subcategory_url(@subcategory), notice: "Subcategory was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @subcategory.destroy
    redirect_to subcategories_url, notice: "Subcategory was successfully destroyed."
  end

  private
  
  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end
  
  def subcategory_params
    params.require(:subcategory).permit(:name, :description, :category_id)
  end
end
