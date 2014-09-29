class Competitor < ActiveRecord::Base
  belongs_to :user
  belongs_to :competition
  has_many :runs

  def result
    if @result_calculated
      @result
    else
      @result_calculated = true
      case competition.competition_format.name
      when 'two races combined'
        if runs.count != 2
          return @result = nil
        else
          @result = runs.inject(0){|prev,current| 
            if prev.is_a?(Numeric)
              if current.result_time.nil?
                current.verdict
              else
                prev + current.result_time 
              end
            else 
              prev
            end
          }
        end
      when 'single race'
        if runs.count != 1
          return @result = nil
        else
          @result = runs[0].result_time
        end
      end
    end
  end
  def <=>(r)
    raise ArgumentError, 'Cannot compare two Runs of different races!' if competition != r.competition
    if result.nil?
      if r.result.nil?
        number <=> r.number
      else
        1
      end
    else 
      if r.result.nil?
      -1
      else 
        if result.is_a?(Numeric) == r.result.is_a?(Numeric)
          result <=> r.result
        else
          result.is_a?(Numeric) ? -1 : 1
        end
      end
    end
  end
  def result_time_difference
    if result.nil? or competition.win_result.nil?
      nil
    else
      result - competition.win_result
    end
  end
  def result_time_difference_formatted
    if result_time_difference.nil? or result_time_difference <= 0
      nil
    else
      format_time result_time_difference, diff: true
    end
  end
  def result_time_formatted
    if result.nil?
      nil
    else
      format_time result
    end
  end 
  def format_time(current, diff: false)
    h = current.to_i / 3600
    m = current.to_i % 3600 / 60
    s = "%04.01f" %  (current % 60)
    str = if diff then "+" else "" end
    str+= ("%02d:" % h) if h > 0
    str+= ("%02d:" % m) if h > 0 or m > 0
    str+= s
  end
end
