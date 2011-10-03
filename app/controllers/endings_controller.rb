class EndingsController < ApplicationController
  def index
    @endings = Ending.all
  end
  
  def new
    @ending = Ending.new
  end
  
  def create
    @ending = Ending.new(params[:ending])
    
    if @ending.save
      redirect_to [:stories]
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @ending = Ending.find(params[:id])
    @ending.destroy
    redirect_to [:stories]
  end
  
  def show
    @ending = Ending.find(params[:id])
  end
end