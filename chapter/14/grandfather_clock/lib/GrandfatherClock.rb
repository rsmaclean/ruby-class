class GrandfatherClock
  class CurrentTime
    def initialize
      @tm = Time.new
    end

    def update_current_time
      initialize
    end

    def display_time
      @tm.strftime("%I:%M:%S %p ")
    end

    def get_standard_hour_count
      @tm.strftime("%l").to_i
    end
  end



  def initialize
    @currentTime = CurrentTime.new
  end

  def time &chime_proc
    show_time
    @currentTime.get_standard_hour_count.times { |i| chime_proc.call(i) }
  end



  private

  def show_time
    @currentTime.update_current_time
    puts "The time is #{@currentTime.display_time}"
  end
end