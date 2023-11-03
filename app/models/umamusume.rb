class Umamusume < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :target_races
  has_many :races, through: :target_races
  has_many :record_of_wins
  has_many :races, through: :record_of_wins

  def won_race?(race)
    # ウマ娘が特定のレースで勝利したかどうかを確認するメソッド
    record_of_wins.exists?(race_id: race.id)
  end
end
