module NLP
  class Token
    
    attr_reader :orth
    attr_reader :tags

    def initialize(orth,tags)
      @orth = orth
      @tags = tags
    end

    def symbol?
      @tags.eql? "tsym"
    end

    def interp?
      @tags.eql? "interp"
    end

    def word?
      not interp? and not number? and not agl?
    end

    def number?
      @tags.include?("tnum")
    end

    def integer?
      @tags.include?("tnum:integer")
    end

    def float?
      @tags.include?("tnum:frac")
    end

    def qublic?
      @tags.include?("qub")
    end

    def agl?
      @tags.include?("agl")
    end

  end
end
