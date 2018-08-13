class PrayerlistsController < ApplicationController
    def index
        @prayerlists = Prayerlist.all
    end

    def new
        @prayerlists = Prayerlist.new
    end

    def create
        @prayerlist = Prayerlist.new(list_params)

        if @prayerlist.save!
            redirect_to prayerlists_path
        else
            render 'new'
        end
    end

    private
    def list_params
        params.require(:prayerlist).permit(:title, :englishtitle)
    end

end