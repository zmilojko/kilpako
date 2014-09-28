class Time
  def to_formatted_period(other)
    if self.year == other.year
      if self.month == other.month
        if self.day == other.day
          s="#{other.day}.#{other.month}."
        else
          s="#{self.day}.-#{other.day}.#{other.month}."
        end
      else
        s="#{self.day}.#{self.month}.-#{other.day}.#{other.month}."
      end
    else
      s="#{self.day}.#{self.month}.#{self.year}-#{other.day}.#{other.month}."
    end
    s += "#{other.year}" # if other.year != Time.now.year
    s
  end
end