require("minitest/autorun")
require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < Minitest::Test
  def setup
    @bus_stop = BusStop.new("bus stop one")

  end

  def test_add_passenger_to_queue
    person = Person.new("alex", 30)
    result = @bus_stop.add_passenger_to_queue(person)
    assert_equal(1,result)
  end
end
