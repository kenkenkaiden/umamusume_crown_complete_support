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
      { name: "スペシャルウィーク", turf: "A", dirt: "G", sprint: "F", mile: "C", intermediate: "A", long: "A" },
      { name: "サイレンススズカ", turf: "A", dirt: "G", sprint: "D", mile: "A", intermediate: "A", long: "E" },
      { name: "トウカイテイオー", turf: "A", dirt: "G", sprint: "F", mile: "E", intermediate: "A", long: "B" },
      { name: "マルゼンスキー", turf: "A", dirt: "D", sprint: "B", mile: "A", intermediate: "B", long: "C" },
      { name: "フジキセキ", turf: "A", dirt: "F", sprint: "B", mile: "A", intermediate: "B", long: "E" },
      { name: "オグリキャップ", turf: "A", dirt: "B", sprint: "E", mile: "A", intermediate: "A", long: "B" },
      { name: "ゴールドシップ", turf: "A", dirt: "G", sprint: "G", mile: "C", intermediate: "A", long: "A" },
      { name: "ウオッカ", turf: "A", dirt: "G", sprint: "F", mile: "A", intermediate: "A", long: "F" },
      { name: "ダイワスカーレット", turf: "A", dirt: "G", sprint: "F", mile: "A", intermediate: "A", long: "B" },
      { name: "タイキシャトル", turf: "A", dirt: "B", sprint: "A", mile: "A", intermediate: "E", long: "G" },
      { name: "グラスワンダー", turf: "A", dirt: "G", sprint: "G", mile: "A", intermediate: "B", long: "A" },
      { name: "ヒシアマゾン", turf: "A", dirt: "E", sprint: "D", mile: "A", intermediate: "A", long: "B" },
      { name: "メジロマックイーン", turf: "A", dirt: "E", sprint: "G", mile: "F", intermediate: "A", long: "A" },
      { name: "エルコンドルパサー", turf: "A", dirt: "B", sprint: "F", mile: "A", intermediate: "A", long: "B" },
      { name: "テイエムオペラオー", turf: "A", dirt: "E", sprint: "G", mile: "E", intermediate: "A", long: "A" },
      { name: "ナリタブライアン", turf: "A", dirt: "G", sprint: "F", mile: "B", intermediate: "A", long: "A" },
      { name: "シンボリルドルフ", turf: "A", dirt: "G", sprint: "E", mile: "C", intermediate: "A", long: "A" },
      { name: "エアグルーヴ", turf: "A", dirt: "G", sprint: "C", mile: "B", intermediate: "A", long: "E" },
      { name: "アグネスデジタル", turf: "A", dirt: "A", sprint: "F", mile: "A", intermediate: "A", long: "G" },
      { name: "セイウンスカイ", turf: "A", dirt: "G", sprint: "G", mile: "C", intermediate: "A", long: "A" },
      { name: "タマモクロス", turf: "A", dirt: "F", sprint: "G", mile: "E", intermediate: "A", long: "A" },
      { name: "ファインモーション", turf: "A", dirt: "G", sprint: "F", mile: "A", intermediate: "A", long: "C" },
      { name: "ビワハヤヒデ", turf: "A", dirt: "F", sprint: "F", mile: "C", intermediate: "A", long: "A" },
      { name: "マヤノトップガン", turf: "A", dirt: "E", sprint: "D", mile: "D", intermediate: "A", long: "A" },
      { name: "マンハッタンカフェ", turf: "A", dirt: "G", sprint: "G", mile: "F", intermediate: "B", long: "A" },
      { name: "ミホノブルボン", turf: "A", dirt: "G", sprint: "C", mile: "B", intermediate: "A", long: "B" },
      { name: "メジロライアン", turf: "A", dirt: "G", sprint: "E", mile: "C", intermediate: "A", long: "B" },
      { name: "ヒシアケボノ", turf: "A", dirt: "F", sprint: "A", mile: "B", intermediate: "F", long: "G" },
    ]

    @umamusume_list.each do |umamusume|
      umamusume[:image] = "#{umamusume[:name]}（公式SNSアイコン）.png"
    end
  end

end
