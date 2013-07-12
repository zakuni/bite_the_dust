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
  end
end
