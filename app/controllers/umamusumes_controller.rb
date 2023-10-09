class UmamusumesController < ApplicationController
  def index
    @umamusumes = current_user.umamusumes
  end

  def new
    umamusume_list
  end

  def create
    @umamusume = Umamusume.new(umamusume_params)
    if @umamusume.valid?
      @umamusume.save
      umamusume_list
      render :new
    else
      render :new
    end
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

  def umamusume_list
    @umamusume_list = [
      { name: "スペシャルウィーク", image: "スペシャルウィーク（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "F", mile: "C", intermediate: "A", long: "A" },
      { name: "サイレンススズカ", image: "サイレンススズカ（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "D", mile: "A", intermediate: "A", long: "E" },
      { name: "トウカイテイオー", image: "トウカイテイオー（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "F", mile: "E", intermediate: "A", long: "B" },
      { name: "マルゼンスキー", image: "マルゼンスキー（公式SNSアイコン）.png", turf: "A", dirt: "D", sprint: "B", mile: "A", intermediate: "B", long: "C" },
      { name: "フジキセキ", image: "フジキセキ（公式SNSアイコン）.png", turf: "A", dirt: "F", sprint: "B", mile: "A", intermediate: "B", long: "E" },
      { name: "オグリキャップ", image: "オグリキャップ（公式SNSアイコン）.png", turf: "A", dirt: "B", sprint: "E", mile: "A", intermediate: "A", long: "B" },
      { name: "ゴールドシップ", image: "ゴールドシップ（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "G", mile: "C", intermediate: "A", long: "A" },
      { name: "ウオッカ", image: "ウオッカ（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "F", mile: "A", intermediate: "A", long: "F" },
      { name: "ダイワスカーレット", image: "ダイワスカーレット（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "F", mile: "A", intermediate: "A", long: "B" },
      { name: "タイキシャトル", image: "タイキシャトル（公式SNSアイコン）.png", turf: "A", dirt: "B", sprint: "A", mile: "A", intermediate: "E", long: "G" },
    ]
  end
end
