require_relative "bike.rb"

class DockingStation

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    # We need to return the bike we dock
    @bike = bike
  end

  def bike
    @bike  #return that same stored/docked bike
  end
end
