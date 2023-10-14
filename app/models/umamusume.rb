class Umamusume < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :target_races
  has_many :races, through: :target_races
  has_many :record_of_wins
  has_many :races, through: :record_of_wins
end
