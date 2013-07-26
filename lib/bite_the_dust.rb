require "eventmachine"
require "bite_the_dust/version"

BTD = BiteTheDust
module BiteTheDust
  def future?(time)
      Time.now < time
  end

  def countdown(sec, &block)
    EM.run do
      EM.add_timer(sec) do
        EM.stop_event_loop        
        return block.call
      end
    end
  end
  module_function :future?
  module_function :countdown

  class BiteTheDust
    def initialize(time)
      @now = Time.now
      @time = time
    end

    def future?
      @now < @time
    end

    def set_timer(&block)
      if future? then
        begin
          num_of_seconds = @time - Time.now
          EM.run do
            EM.add_timer(num_of_seconds.to_i) do
              EM.stop_event_loop              
              return block.call
            end
          end
        rescue RangeError
          raise RangeError, "Time too far"
        end
      else
        return block.call
      end
    end
  end
end
