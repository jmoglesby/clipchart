class ChildrenController < ApplicationController
  def index
    @children = child.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    render plain: params[:child].inspect
  end

  def update
  end

  private

  def child_params
    params.require(:child).permit(:name)
  end
  end
