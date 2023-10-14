class Race < ApplicationRecord
  has_many :target_races
  has_many :umamusumes, through: :target_races
  has_many :record_of_wins
  has_many :umamusumes, through: :record_of_wins
end
