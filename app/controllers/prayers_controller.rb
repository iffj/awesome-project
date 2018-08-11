class PrayersController < ApplicationController
  def index
    @prayers = Prayer.all
  end

  def new
    @prayer = Prayer.new
  end

  def edit
    @prayer = Prayer.find(params[:id])
  end

  def create
    @prayer = Prayer.new(prayer_params)
    if @prayer.save
      flash[:notice] = "added to prayer list"
      redirect_to prayer_path(@prayer)
    else
      render 'new'
    end
  end

  def show
    @prayer = Prayer.find(params[:id])
  end

  def destroy
    @prayer = Prayer.find(params[:id])
    @prayer.destroy

    redirect_to prayers_path
  end

  def update
    @prayer = Prayer.find(params[:id])
    if @prayer.update(prayer_params)
      flash[:notice] = "success"
      redirect_to prayer_path(@prayer)
    else
      render 'edit'
    end
  end

  private
  def prayer_params
    params.require(:prayer).permit(:name, :recipient, :relation, :remark)
  end


end
