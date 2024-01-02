class UmamusumesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @umamusumes = current_user.umamusumes if user_signed_in?

    ## ゲーム内に実装済みのG1、G2、G3レースの総数をテーブルから取得
    grade_counts = Race.group(:grade).count
    g1_count = grade_counts["G1"] || 0
    g2_count = grade_counts["G2"] || 0
    g3_count = grade_counts["G3"] || 0

    @all_pattern_race = g1_count + g2_count + g3_count
  end

  def new
    set_umamusume_list
  end

  def create
    @umamusume = Umamusume.new(umamusume_params)
    if @umamusume.valid?
      @umamusume.save
      set_umamusume_list
      render :new
    else
      render :new
    end
  end

  def show
    @umamusume = Umamusume.find(params[:id])
    @races = Race.order('default_order ASC')
    @races_by_month = Race.where.not(date_junior: nil).group_by { |race| race.date_junior.split('月')[0] }
    @target_races = TargetRace.where(umamusume_name: @umamusume.name)

    ## ゲーム内に実装済みのG1、G2、G3レースの総数をテーブルから取得
    grade_counts = Race.group(:grade).count
    @g1_count = @umamusume.g1_count
    @g2_count = @umamusume.g2_count
    @g3_count = @umamusume.g3_count

    @all_pattern_race = @g1_count + @g2_count + @g3_count
  end

  def destroy
    @umamusume = Umamusume.find(params[:id])
    return unless @umamusume.destroy

    @umamusumes = current_user.umamusumes
    render :index
  end

  private

  def umamusume_params
    params.require(:umamusume).permit(:name, :turf, :dirt, :sprint, :mile, :intermediate, :long).merge(user_id: current_user.id)
  end

  def set_umamusume_list # ウマ娘たちのデータを用意するためのメソッド
    @umamusume_list = UmamusumeListService.get_list
  end
end
