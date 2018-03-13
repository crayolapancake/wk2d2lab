require("minitest/autorun")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < Minitest::Test

  def setup
    @bus = Bus.new(22,"Edinburgh")
    @bus_stop = BusStop.new("bus stop one")
  end

  def test_driving
    result = @bus.drive("brum brum")
    assert_equal("brum brum", result)
  end

  def test_number_of_passengers
    result = @bus.number_of_passengers()
    assert_equal(0, result)
  end

  def test_add_passenger
    passenger1 = Person.new("Alex", 30)
    @bus.add_passenger(passenger1)
    assert_equal(1,@bus.number_of_passengers())
  end

  def test_remove_passenger
    passenger1 = Person.new("Alex", 30)
    @bus.remove_passenger(passenger1)
    assert_equal(0,@bus.number_of_passengers())
  end

  def test_remove_all_passengers
    passenger1 = Person.new("Alex", 30)
    passenger2 = Person.new("Jemma", 29)
    @bus.remove_all_passengers()
    assert_equal(0,@bus.number_of_passengers())
  end

  def test_pick_up_passengers
    @bus_stop.add_passenger_to_queue("Alex")
    @bus_stop.add_passenger_to_queue("Jemma")

    @bus.pick_up_passengers(@bus_stop)

    assert_equal(2,@bus.number_of_passengers())
  end

end
