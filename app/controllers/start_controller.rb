class StartController < ApplicationController
  def index
    @stories = Story.all
  end

end
