class BeginningsController < ApplicationController
  def index
    @beginnings = Beginning.all
  end
  
  def new
    @beginning = Beginning.new
  end
  
  def create
    @beginning = Beginning.new(params[:beginning])
    
    if @beginning.save
      redirect_to [:stories]
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @beginning = Beginning.find(params[:id])
    @beginning.destroy
    redirect_to [:stories]
  end
  
  def show
    @beginning = Beginning.find(params[:id])
  end
end