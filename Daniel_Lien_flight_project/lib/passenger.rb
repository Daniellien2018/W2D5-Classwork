class Passenger
   def initialize(name)
    @name = name
    @flight_numbers = [] 
   end

   def name #getter
    @name
   end
   
   def has_flight?(flight_number)
        @flight_numbers.each do |flight_num|
            if flight_num.to_s.upcase == flight_number.to_s.upcase
                return true
            end
        end
        return false
    end

    def add_flight(flight_number)
        if !self.has_flight?(flight_number)
            @flight_numbers << flight_number.to_s.upcase
        end
    end
end