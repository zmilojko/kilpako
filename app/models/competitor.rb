class Competitor < ActiveRecord::Base
  belongs_to :user
  belongs_to :competition
  has_many :runs
end
