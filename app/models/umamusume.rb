class Umamusume < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :target_races, dependent: :destroy
  has_many :races, through: :target_races
  has_many :record_of_wins, dependent: :destroy
  has_many :races, through: :record_of_wins

  def won_race?(race) # ウマ娘が特定のレースで勝利したかどうかを確認するメソッド
    record_of_wins.exists?(race_id: race.id)
  end

  def won_race_count # そのウマ娘の勝利したレースの総数をrecord_of_winsテーブルから数えるるメソッド
    record_of_wins.count
  end

  def won_g1_count
    races.where(grade: "G1").count
  end

  def won_g2_count
    races.where(grade: "G2").count
  end

  def won_g3_count
    races.where(grade: "G3").count
  end

  def g1_count
    Race.where(grade: 'G1').count
  end

  def g2_count
    Race.where(grade: 'G2').count
  end

  def g3_count
    Race.where(grade: 'G3').count
  end
end
