class PrayersController < ApplicationController
  def index
    @korean_prayers = Prayer.select('id', 'prayer', 'name', 'relationship', 'note').order(:prayer)
    @english_prayers = Prayer.select('id', 'english_prayer', 'english_name', 'english_relationship', 'english_note').order(:english_prayer)
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
      redirect_to prayers_path
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
    params.require(:prayer).permit(:prayer, :name, :relationship, :note, :english_prayer, :english_name, :english_relationship, :english_note)
  end

  def english_prayer_params
    params.require(:prayer).permit(:englishName, :englishRecipient, :englishRelation, :englishRemark)
  end

end
