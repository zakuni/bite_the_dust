require "bite_the_dust/version"

module BiteTheDust
  def self.future?(time)
      Time.now < time
  end
  
  class BiteTheDust
    def initialize(time)
      @time = time
    end

    def future?
      Time.now < @time
    end
  end
end
