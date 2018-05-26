class YelpitsController < ApplicationController
  def index
    @yelpits = Yelpit.all
  end

  def show
    @yelpit = Yelpit.find(params[:id])
  end

  def new
    @yelpit = Yelpit.new
  end
  
  def create
    @yelpit = Yelpit.new(yelpit_params)
    if @yelpit.save
      redirect_to yelpits_path
    else
      render :new
    end 
  end

  def edit
    @yelpit = Yelpit.find(params[:id])
  end

  def update
    @yelpit = Yelpit.find(params[:id])
    if @yelpit.update(yelpit_params)
      redirect_to yelpits_path
    else
      render :edit
    end
  end

  def destroy
    Yelpit.find(params[:id]).destroy
    redirect_to yelpits_path
  end

  private
  def yelpit_params
    params.require(:yelpit).permit(:restaurant, :review, :rating)
  end
end
