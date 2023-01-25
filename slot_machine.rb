class SlotMachine
    def initialize(result)
      @result = result
    end

    def self.play
      reel0 = %w[joker star bell seven cherry].sample
      reel1 = %w[joker star bell seven cherry].sample
      reel2 = %w[joker star bell seven cherry].sample
      return SlotMachine.new([reel0, reel1, reel2])
    end

    def score
      if (@result[0] != @result[1]) && (@result[1] != @result[2]) && (@result[0] != @result[2])
        score = 0
      else
        if @result.all?(@result.first)
          case @result.first # => ['bell', 'joker', 'joker']
            when "joker"
            score = 50
            when "star"
            score = 40
            when "bell"
            score = 30
            when "seven"
            score = 20
            when "cherry" 
            score = 10
          end
        elsif @result.count('joker').eql? 2
          score = 25
        else
          score = 0
        end
      end
    end
end
