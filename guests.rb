class Guests
    attr_reader(:name, :age, :wallet)
    attr_writer(:wallet)

    def initialize(name, age, wallet)
        @name = name
        @age = age 
        @wallet = wallet
    end

    def spend_money(money)
        if @wallet >= 0
        @wallet -= money
        end
    end


end 