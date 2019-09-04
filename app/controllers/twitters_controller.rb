class TwittersController < ApplicationController
  before_action :set_twitter,only:[:edit, :update, :destroy]

  def new
    @twitter = Twitter.new
  end

  def create
    @twitter = Twitter.new(twi_params)
      if params[:back]
      render "new"
    elsif
      @twitter.save
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

  def destroy
    @twitter.destroy
    redirect_to twitters_path notice: "削除しました"
  end

  def top
  end

  def confirm
      @twitter = Twitter.new(twi_params)
      render :new if @twitter.invalid?
  end

  private

  def twi_params
    params.require(:twitter).permit(:content)
  end

  def set_twitter
    @twitter = Twitter.find(params[:id])
  end
end
