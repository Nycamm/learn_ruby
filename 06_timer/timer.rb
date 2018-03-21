class Timer
  #write your code here
  def initialize
    @display_time = ["00", "00", "00"]
    @seconds = 0
    @single_digits = ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09"]
  end

  attr_accessor :seconds



  def time_string
    while @seconds != 0
      if (@seconds/3600) > 0
        @hours = @seconds/3600
        if @hours <= 9
          @display_time[0] = @single_digits[@hours]
        else
          @display_time[0] = @hours.to_s
        end
        @seconds = @seconds%3600
      elsif (@seconds/60) > 0
        @minutes = @seconds/60
        if @minutes <= 9
          @display_time[1] = @single_digits[@minutes]
        else
          @display_time[1] = @minutes.to_s
        end
        @seconds = @seconds%60
      else
        if @seconds <= 9
          @display_time[2] = @single_digits[@seconds]
        else
          @display_time[2] = @seconds.to_s
        end
        @seconds = @seconds - @seconds
      end
    end
    @display_time.join(":")
  end

end
