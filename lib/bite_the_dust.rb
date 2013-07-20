require "eventmachine"
require "bite_the_dust/version"

module BiteTheDust
  def future?(time)
      Time.now < time
  end

  def countdown(sec, function)
    EM.run do
      EM.add_timer(num_of_seconds.to_i) do
        function.call
        yield if block_given?
        EM.stop_event_loop
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

    def set_timer(function)
      if future? then
        begin
          num_of_seconds = @time - Time.now
          EM.run do
            EM.add_timer(num_of_seconds.to_i) do
              function.call
              yield if block_given?
              EM.stop_event_loop
            end
          end
          true
        rescue RangeError
          puts "Time too far"
          false
        end
      else
        false
      end
    end
  end
end
