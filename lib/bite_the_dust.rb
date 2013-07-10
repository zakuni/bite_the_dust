require "bite_the_dust/version"

module BiteTheDust
  class BiteTheDust
    def future?(time)
      Time.now < Time.local(time)
    end
  end
end
