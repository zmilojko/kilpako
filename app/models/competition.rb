class Competition < ActiveRecord::Base
  Status = [:not_published, :open, :ready,
            :ongoing, :finished, :closed, :cancelled]

  belongs_to :event
  belongs_to :competition_format
  has_many :races
  has_many :competitors

  def competitors_ranked
    competitors.sort
  end
  def competitors_list
    competitors.all order: "number ASC"
  end
  
  def selected_status
    status.to_sym
  end

  def selected_status=(new_status_symbol)
    status = new_status_symbol.to_s
  end
  def period_formatted()
    start_date.to_formatted_period end_date
  end
  
  def national?
    @national ||= competitors.any?{|c| c.user.nationality != "finland"}
  end
  def club_marked?
    @klub_marked ||= competitors.any?{|c| not (c.user.club.nil? or c.user.club.empty?)}
  end
  def win_result
    @win_result ||= competitors.min.result
  end
end
