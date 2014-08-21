require "singleton"
require "set"

class Timer
  include Singleton

  def initialize
    @running = false
    @timers = SortedSet.new
    @blk_list = Hash.new
  end

  def run
    loop {
      @current_time = Time.now
      @timers.each {|timer|
        if @current_time >= timer.first
          @timers.delete timer
          @blk_list[timer.last].call
        else
          break
        end
      }
      break if @timers.empty?
    }
  end

  def add_timer quantum=1, &blk
    uuid = general_uuid
    @timers.add([Time.now + quantum, uuid])
    @blk_list[uuid] = blk
    run
  end

  def cancel_timer
  end

  def fire
  end

  def general_uuid
    @uuid ||= 0
    @uuid = @uuid + 1
  end
end

timer = Timer.instance
timer.add_timer(10) {
  puts "this is first timer."
}
