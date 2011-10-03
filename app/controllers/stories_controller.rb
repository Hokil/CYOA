class StoriesController < ApplicationController
  
  def index
    @stories = Story.all
  end
  
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(params[:story])
    
    if @story.save
      redirect_to [:stories]
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to [:stories]
  end
  
  def show
    @story = Story.find(params[:id])
  end
end