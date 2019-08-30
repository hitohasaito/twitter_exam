class TwittersController < ApplicationController
  def new
    @twitter = Twitter.new
  end
  def create
    @twitters = Twitter.new(twi_params)
    if @twitters.save
      redirect_to twitters_path
    else
      render "new"
    end
  end
  def index
    @twitters = Twitter.all
  end


private

 def twi_params
   params.require(:twitter).permit(:content)
 end
end
