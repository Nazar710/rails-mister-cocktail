class CocktailsController < ApplicationController
def index
@cocktails = Cocktail.all
end

def show
@coctail = Cocktail.find(params[:id])
end

def new
  @cocktail = Cocktail.new
end

def create
  @cocktail = Cocktail.new(params[:cocktail])
  if @cocktail.save
    redirect_to cocktail_path(@cocktail)
    else
      render :new
  end
end
end
