require_relative "bike.rb"

class DockingStation

  #CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes!' if @bikes.length == 0
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'Station full!' if @bikes.length >= 20
    # We need to return the bike we dock
    @bikes << bike
  end

  attr_reader :bikes
end
