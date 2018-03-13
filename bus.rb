class Bus

  def initialize(num,dest)
    @route_number = num
    @destination = dest
    @passengers = []
  end

  def drive(sound)
    return sound
  end

  def number_of_passengers()
    return @passengers.length()
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def remove_passenger(passenger_name)
    for passenger in @passengers
      if passenger_name == passenger
        passenger.delete()
      end
    end
  end

  def remove_all_passengers
    for passenger in @passengers
      passenger.delete()
    end
  end

  def pick_up_passengers(bus_stop)
    for people in bus_stop[@queue]
      @passengers << people
    end
    return @passengers.length
  end

end
