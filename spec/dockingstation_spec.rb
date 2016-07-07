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
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it "responds to bike" do
    expect(subject).to respond_to(:bike)
  end

  it "docked bike returns a bike" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it "bike method returns docked bike" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

  it "doesn't release when there aren't any" do
    expect{subject.release_bike}.to raise_exception('No bikes!')
  end

end
