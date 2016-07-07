require_relative "bike.rb"

class DockingStation

  #CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes!' if empty?
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
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end
