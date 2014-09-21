class Run < ActiveRecord::Base
  belongs_to :competitor
  belongs_to :race
end
