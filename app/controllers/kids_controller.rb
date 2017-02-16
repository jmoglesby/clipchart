class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def new
    @kid = Kid.new
  end

  def edit
    @kid = Kid.find(params[:id])
  end

  def create
    render plain: params[:kid].inspect
  end

  def update
    @kid = Kid.find(params[:id])
    if @kid.update(Kid_params)
      redirect_to @kid
    else
      render 'edit'
    end
  end

  private

  def Kid_params
    params.require(:Kid).permit(:name)
  end
end
