require "docking_station"
require "bike"

#describe DockingStation do
#  it {respond_to(:release_bike)}
#end

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  #expect an instance of dockingstation to return an instance of a bike when release bike called

#  it "releases a working bike" do
#    expect((subject.release_bike).working?).to eq true
#  end
  #expect an instance of dockingstation to return a working bike when release bike called
end

#Add a test to your DockingStation specification that a) gets a bike, and then b) expects the bike to be working
