class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_passenger_to_queue(name)
    @queue << name
    return @queue.length
  end

end
