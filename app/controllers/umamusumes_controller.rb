class UmamusumesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if user_signed_in?
      @umamusumes = current_user.umamusumes
    end
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


  def set_umamusume_list
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
      { name: "グラスワンダー", image: "グラスワンダー（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "G", mile: "A", intermediate: "B", long: "A" },
      { name: "ヒシアマゾン", image: "ヒシアマゾン（公式SNSアイコン）.png", turf: "A", dirt: "E", sprint: "D", mile: "A", intermediate: "A", long: "B" },
      { name: "メジロマックイーン", image: "メジロマックイーン（公式SNSアイコン）.png", turf: "A", dirt: "E", sprint: "G", mile: "F", intermediate: "A", long: "A" },
      { name: "エルコンドルパサー", image: "エルコンドルパサー（公式SNSアイコン）.png", turf: "A", dirt: "B", sprint: "F", mile: "A", intermediate: "A", long: "B" },
      { name: "テイエムオペラオー", image: "テイエムオペラオー（公式SNSアイコン）.png", turf: "A", dirt: "E", sprint: "G", mile: "E", intermediate: "A", long: "A" },
      { name: "ナリタブライアン", image: "ナリタブライアン（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "F", mile: "B", intermediate: "A", long: "A" },
      { name: "シンボリルドルフ", image: "シンボリルドルフ（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "E", mile: "C", intermediate: "A", long: "A" },
      { name: "エアグルーヴ", image: "エアグルーヴ（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "C", mile: "B", intermediate: "A", long: "E" },
      { name: "アグネスデジタル", image: "アグネスデジタル（公式SNSアイコン）.png", turf: "A", dirt: "A", sprint: "F", mile: "A", intermediate: "A", long: "G" },
      { name: "セイウンスカイ", image: "セイウンスカイ（公式SNSアイコン）.png", turf: "A", dirt: "G", sprint: "G", mile: "C", intermediate: "A", long: "A" },
    ]
  end
end
