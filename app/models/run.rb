class Run < ActiveRecord::Base
  belongs_to :competitor
  belongs_to :race
  
  def result_time_formatted 
    if result_time.nil?
      nil
    else
      competitor.format_time result_time
    end
  end
end
