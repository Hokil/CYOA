class PlotPointssController < ApplicationController
  def index
    @stories = PlotPoints.all
  end
  
  def new
    @plpo = PlotPoints.new
  end
  
  def create
    @plpo = PlotPoints.new(params[:plpo])
    
    if @plpo.save
      redirect_to [:stories]
  end
  
  def destroy
    @plpo = PlotPoints.find(params[:id])
    @plpo.destroy
    redirect_to [:stories]
  end
  
  def show
    @plpo = PlotPoints.find(params[:id])
  end
end