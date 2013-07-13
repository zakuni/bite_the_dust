require "eventmachine"
require "bite_the_dust/version"

module BiteTheDust
  def future?(time)
      Time.now < time
  end
  module_function :future?

  class BiteTheDust
    def initialize(time)
      @time = time
    end

    def future?
      Time.now < @time
    end

    def set_timer
      if future? then
        begin
          num_of_seconds = @time - Time.now
          EM.run do
            puts "timer set"
            EM.add_timer(num_of_seconds.to_i) do
              puts "done"
              EM.stop_event_loop
            end
          end
        rescue RangeError
          puts "Time too far"
          false
        end
        true
      else
        false
      end
    end
  end
end
