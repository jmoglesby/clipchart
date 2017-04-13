class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def show
    @child = Child.find(params[:id])
  end

  def new
    @child = Child.new
  end

  def edit
    @child = Child.find(params[:id])
  end

  def create
    @child = Child.new(child_params)

    if @child.save
      redirect_to @child
    else
      render 'new'
    end
  end

  def update
    @child = Child.find(params[:id])

    if @child.update(child_params)
      redirect_to @child
    else
      render 'edit'
    end
  end

  def destroy
    @child = Child.find(params[:id])
    @child.destroy

    redirect_to children_path
  end

  def color_up
    @child = Child.find(params[:id])
    unless Child.colors[@child.color] == 6
      @child.color = Child.colors[@child.color] + 1
      @child.save
    end

    redirect_to children_path
  end

  def color_down
    @child = Child.find(params[:id])
    unless Child.colors[@child.color] == 0
      @child.color = Child.colors[@child.color] - 1
      @child.save
    end

    redirect_to children_path
  end

  def redeem_screentime
    @child = Child.find(params[:id])
    @time_redeemed = gets

    @child.screentime = @child.screentime - @time_redeemed
    @child.save
  end

  def daily_reset_and_distribution
    Child.daily_reset_and_distribution

    redirect_to root_path
  end

  private

  def child_params
    params.require(:child).permit(:name)
  end

end
