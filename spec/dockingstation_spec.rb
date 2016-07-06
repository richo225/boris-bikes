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

  #expect an instance of dockingstation to return a working bike when release bike called

#  it "releases a working bike" do
#    bike = subject.release_bike
#    expect(bike.working?).to eq true
#  end

  it "docks a bike" do
    expect(subject).to respond_to(:dock_bike)
  end


end
