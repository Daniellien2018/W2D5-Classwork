class Flight
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        if @passengers.length < @capacity
            return false
        end
        return true
    end

    def board_passenger(passenger) #how to do 
        if !self.full? && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
        # if @self.full?
        #     if @passenger.has_flight?(@flight_number)
        #     @passengers << @passenger
        #     end
        # end
    end

    def list_passengers
        return @passengers.map(&:name)
        # new_array = []
        # @passengers.each do |ele|
        #     new_array << @passengers[name]
        # end
        # return new_array
    end
    def [](index)
        return @passengers[index]
    end
    def <<(passenger)
        self.board_passenger(passenger)
    end
end