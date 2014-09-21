class Race < ActiveRecord::Base
  Status = [:not_started, :ongoing, :finished, :closed, :cancelled]

  belongs_to :competition
  belongs_to :race_format
  has_many :runs

  def selected_status
    status.to_sym
  end

  def selected_status=(new_status_symbol)
    status = new_status_symbol.to_s
  end
end
