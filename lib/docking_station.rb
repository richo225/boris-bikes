require_relative "bike.rb"

class DockingStation

  def release_bike
    raise 'No bikes!' unless @bike
    @bike
  end

  def dock_bike(bike)
    raise 'Station full!' if @bike
    # We need to return the bike we dock
    @bike = bike
  end

  attr_reader :bike
end
