class Friend < ApplicationRecord
  validates :name, presence: true
  validates :riot_id, presence: true, uniqueness: true
  validates :discord, presence: true, uniqueness: true
  validates :facebook, presence: true, uniqueness: true
  validates :twitter, presence: true, uniqueness: true
end
