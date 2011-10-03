class ChoicesController < ApplicationController
  def index
    @choices = Choice.all
  end
  
  def new
    @choice = Choice.new
  end
  
  def create
    @choice = Choice.new(params[:choice])
    
    if @choice.save
      redirect_to [:stories]
  end
  
  def destroy
    @choice = Choice.find(params[:id])
    @choice.destroy
    redirect_to [:stories]
  end
  
  def show
    @choice = Choice.find(params[:id])
  end
end