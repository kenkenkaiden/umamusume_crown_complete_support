class UmamusumesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @umamusumes = current_user.umamusumes if user_signed_in?
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
    @races = Race.order("default_order ASC")

    ## 実装済みのG1、G2、G3レースの総数をテーブルから取得
    grade_counts = Race.group(:grade).count
    @g1_count = @umamusume.g1_count
    @g2_count = @umamusume.g2_count
    @g3_count = @umamusume.g3_count

  end

  def destroy
    @umamusume = Umamusume.find(params[:id])
    if @umamusume.destroy
      @umamusumes = current_user.umamusumes
      render :index
    end
  end

  private

  def umamusume_params
    params.require(:umamusume).permit(:name, :turf, :dirt, :sprint, :mile, :intermediate, :long).merge(user_id: current_user.id)
  end

  def set_umamusume_list # ウマ娘たちのデータを用意するためのメソッド
    @umamusume_list = UmamusumeListService.get_list
  end
end
