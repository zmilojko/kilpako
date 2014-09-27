class Event < ActiveRecord::Base
  has_and_belongs_to_many :masters, class_name: "User"
  has_many :competitions
  has_many :event_pages

  Status = [:not_published, :open, :ongoing, :closed, :cancelled]

  def period_formatted()
    if start_date.year == end_date.year
      if start_date.month == end_date.month
        if start_date.day == end_date.day
          s="#{end_date.day}.#{end_date.month}."
        else
          s="#{start_date.day}.-#{end_date.day}.#{end_date.month}."
        end
      else
        s="#{start_date.day}.#{start_date.month}.-#{end_date.day}.#{end_date.month}."
      end
    else
      s="#{start_date.day}.#{start_date.month}.#{start_date.year}-#{end_date.day}.#{end_date.month}."
    end
    s += "#{end_date.year}" # if end_date.year != Time.now.year
    s
  end
end
