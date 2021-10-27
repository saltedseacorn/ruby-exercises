class Centaur
    attr_reader :name,
                :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @activity_counter = 0
        @laying = false
    end

    def shoot
        return 'NO!' if @activity_counter >= 3
        return 'NO!' if @laying == true && @standing == false
        @activity_counter += 1
        'Twang!!!'
    end

    def run
        return 'NO!' if @laying == true
        @activity_counter += 1
        'Clop clop clop clop!'
    end

    def cranky?
        @cranky = true if @activity_counter >= 3
        @cranky
    end

    def standing?
        @standing
    end

    def laying?
        @laying
    end

    def sleep
        return 'NO!' if @standing == true
    end

    def lay_down
        @standing = false 
        @laying = true
    end

    def stand_up
        @laying = false
        @standing = true
    end
end