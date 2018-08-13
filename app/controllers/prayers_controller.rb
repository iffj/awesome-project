class PrayersController < ApplicationController
  def index
    @prayerlist_id = params[:prayerlistid]

    @korean_prayers = Prayer.where(listid: @prayerlist_id).select('id', 'prayer', 'name', 'relationship', 'note').order(:prayer)
    @english_prayers = Prayer.where(listid: @prayerlist_id).select('id', 'english_prayer', 'english_name', 'english_relationship', 'english_note').order(:english_prayer)
  end

  def new
    @prayerlist_id = params[:prayerlistid]

    @prayer = Prayer.new
  end

  def edit
    @prayer = Prayer.find(params[:id])
  end

  def create
    @prayer = Prayer.new(prayer_params)
    pid = params[:listid]
    @prayer.listid = pid

    #Save member --start
    english_prayer = @prayer.english_prayer
    korean_prayer = @prayer.prayer

    m = Member.find_by kor_name: korean_prayer

    if(m.nil?)
      @member = Member.new(eng_name: english_prayer, kor_name: korean_prayer)
      @member.save!
    end
    #Save member --end

    #Save Prayee --start
    english_name = @prayer.english_name
    korean_name = @prayer.name

    p = Prayee.find_by kor_name: korean_name

    if(p.nil?)
      @prayee = Prayee.new(eng_name:english_name, kor_name:korean_name)
      @prayee.save!
    end

    #End Prayee --end

    # Save Relation -- start
    relation = @prayer.relationship
    eng_relation = @prayer.english_relationship

    r = Relation.find_by relation: relation

    if(r.nil?)
      @relation = Relation.new(relation: relation, eng_relation: eng_relation)
      @relation.save!
    end

    # Save Relation --end
    if @prayer.save!
      redirect_to prayers_path prayerlistid:pid
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

  def get_english_name
    kor_name = params[:kn]

    ep = Member.where(kor_name: kor_name).select("eng_name").first

    if(ep.nil?)
      render json: '' and return
    end

    render json: ep.eng_name and return
  end

  def get_prayee_english_name
    kor_name = params[:kn]

    ep = Prayee.where(kor_name: kor_name).select("eng_name").first

    if(ep.nil?)
      render json:'' and return
    end

    render json: ep.eng_name and return
  end

  def get_english_relation
    relation = params[:kn]

    ep = Relation.where(relation: relation).select("eng_relation").first
    if(ep.nil?)
      render json:'' and return
    end

    render json: ep.eng_relation and return
  end

  private
  def prayer_params
    params.require(:prayer).permit(:prayer, :name, :relationship, :note, :english_prayer, :english_name, :english_relationship, :english_note, :listid)
  end

  def english_prayer_params
    params.require(:prayer).permit(:englishName, :englishRecipient, :englishRelation, :englishRemark)
  end
end
