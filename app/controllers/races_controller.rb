class RacesController < ApplicationController

  skip_before_action :verify_authenticity_token
  
  def create # 未勝利のレースを勝利済みに変更する処理
    @umamusume = Umamusume.find(params[:umamusume_id])
    @race = Race.find(params[:race_id])

    # レースの登録処理を実行
    if @umamusume.won_race?(@race)
      # すでに登録済みの場合の処理
      # 今のところなし
    else
      # レースを登録する処理
      # @umamusume.races << @race
      RecordOfWin.create(umamusume: @umamusume, race: @race)
    end

    redirect_to umamusume_path(@umamusume)
  end

  def destroy # 勝利済みのレースを未勝利に変更する処理
    umamusume = Umamusume.find(params[:umamusume_id])
    race = Race.find(params[:id])
    record = RecordOfWin.find_by(umamusume: umamusume, race: race)

    record.destroy if record

    redirect_to umamusume_path(umamusume)
  end
end
