class RacesController < ApplicationController
  def create
    @umamusume = Umamusume.find(params[:umamusume_id])
    @race = Race.find(params[:race_id])

    # レースの登録処理を実行
    if @umamusume.won_race?(@race)
      # すでに登録済みの場合の処理
      flash[:alert] = 'このレースはすでに登録されています。'
    else
      # レースを登録する処理
      @umamusume.races << @race
      flash[:notice] = 'レースが登録されました。'
    end

    redirect_to umamusume_path(@umamusume)
  end

  def destroy
    umamusume = Umamusume.find(params[:umamusume_id])
    race = Race.find(params[:id])
    record = RecordOfWin.find_by(umamusume: umamusume, race: race)

    record.destroy if record

    redirect_to umamusume_path(umamusume)
  end
end
