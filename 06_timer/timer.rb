class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def time_string
    @display_hours = @seconds / 3600
    @display_minutes = (@seconds - @display_hours * 3600) / 60
    @display_seconds = @seconds - @display_hours * 3600 - @display_minutes * 60

    "#{format_time(@display_hours)}:#{format_time(@display_minutes)}:#{format_time(@display_seconds)}"
  end

  def format_time(time)
    # Pad the length of the display times to fit our clock format
    if (time < 10)
      return ("0" + time.to_s)
    else
      return time.to_s 
    end
  end

end
