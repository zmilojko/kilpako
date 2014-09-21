class Competition < ActiveRecord::Base
  Status = [:not_published, :open, :ready,
            :ongoing, :finished, :closed, :cancelled]

  belongs_to :event
  belongs_to :competition_format
  has_many :races

  def selected_status
    status.to_sym
  end

  def selected_status=(new_status_symbol)
    status = new_status_symbol.to_s
  end
end
