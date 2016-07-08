require_relative "bike.rb"

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :capacity

  def release_bike
    raise 'No bikes!' if empty?
    raise 'There are no working bikes!'if @bikes[0].broken?
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'Station full!' if full?
    # We need to return the bike we dock
    @bikes << bike
  end

  attr_reader :bikes

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
