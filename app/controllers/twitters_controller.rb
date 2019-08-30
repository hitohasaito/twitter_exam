class TwittersController < ApplicationController
  before_action :set_twitter,only:[:edit, :update]
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
  def edit
  end
  def update
    if @twitter.update(twi_params)
      redirect_to twitters_path notice: "編集しました"
    else
      render "edit"
    end
  end


private

 def twi_params
   params.require(:twitter).permit(:content)
 end
 def set_twitter
   @twitter = Twitter.find(params[:id])
 end
end
