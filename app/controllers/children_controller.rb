class ChildrenController < ApplicationController
  def index
    @children = child.all
  end

  def show
    @child = child.find(params[:id])
  end

  def new
    @child = child.new
  end

  def edit
    @child = child.find(params[:id])
  end

  def create
    @child = child.new(child_params)
    if @child.save
      redirect_to @child
    else
      render 'new'
    end
  end

  def update
    @child = child.find(params[:id])
    if @child.update(child_params)
      redirect_to @child
    else
      render 'edit'
    end
  end

  private

  def child_params
    params.require(:child).permit(:name)
  end
  end
