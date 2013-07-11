require "bite_the_dust/version"

module BiteTheDust
  class BiteTheDust
    def self.future?(time)
      Time.now < time
    end

    def initialize(time)
      @time = time
    end

    def future?
      Time.now < @time
    end
  end
end
