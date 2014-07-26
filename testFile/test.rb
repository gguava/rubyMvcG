
  class Wood
    def initialize
      @desc = "I am a primal wood,guava"
    end

    def say
      puts @desc
    end
  end

  class WoodDesk < Wood
    def initialize
      @desc = "I am a desk made of wood"
    end

    def say_private
      puts "actually, i have some bug but no public"
    end

    public :say
    private :say_private

  end

  class WoodChair < Wood
    def initialize
      @desc = "I am a chair made of wood"
    end

    def say_private
      puts "I Want get married with a WoodDesk..."
    end

    def smile
      puts "ha hah hah haha ...."
    end

    public :say
    private :say_private, :smile
  end


# guava
v=Object.const_get("Wood")
x=v.new
x.say
  # hh