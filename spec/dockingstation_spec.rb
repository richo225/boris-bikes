require "docking_station"

describe DockingStation do
  it {respond_to(:release_bike)}
end

=begin

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
end

=end
