class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
  end

  # def edit
  #   set_cocktail
  # end

  # def update
  #   set_cocktail
  #   @cocktail.update(cocktail_params)
  #   redirect_to cocktail_path(@cocktail)
  # end

private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
