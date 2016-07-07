require_relative "bike.rb"

class DockingStation

  def release_bike
    raise 'No bikes!'
    Bike.new
  end

  def dock_bike(bike)
    # We need to return the bike we dock
    @bike = bike
  end

  attr_reader :bike
end
