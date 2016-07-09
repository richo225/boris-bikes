require "docking_station"
require "bike"

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

#------------------------------------------------------------------------------------------------
  describe "#release_bike" do
    #if the bike isn't broken then it's a working bike and is released
    it "releases a working docked bike" do
      bike = double(:bike)
      #allow the double("bike") to respond_to the broken? method and return false
      allow(bike).to receive(:broken?).and_return(false)
      subject.dock_bike(bike)
      released_bike = subject.release_bike
      expect(released_bike.broken?).to eq false #bike released won't be broken ie. @broken = false
    end

    #if bike has report_broken called on it, dock it but don't release it
    it "won\'t release a broken bike" do
      bike = double(:bike)
      #allow the double("bike") to respond_to the broken? method and return true
      allow(bike).to receive(:broken?).and_return(true)
      subject.dock_bike(bike) #docking station needs a bike first before can release
      expect{subject.release_bike}.to raise_exception('There are no working bikes!')
    end

    #test that returns an error if there's no bikes to be released
    it "doesn't release a bike when there aren't any" do
      expect{subject.release_bike}.to raise_exception('No bikes!')
    end
  end

#--------------------------------------------------------------------------------------------------
  describe "#dock_bike" do
    it "doesn't accept bike when already one" do
      bike = double(:bike)
      subject.capacity.times {subject.dock_bike(bike)}
      expect{subject.dock_bike(bike)}.to raise_exception('Station full!')
    end
  end

    it "docks a bike" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it "docked bike returns a bike" do
      bike = double(:bike)
      expect(subject.dock_bike(bike)).to eq subject.bikes
    end

    it "bikes attribute reader returns docked bikes" do
      bike = double(:bike)
      subject.dock_bike(bike)
      expect(subject.bikes).to eq subject.bikes
    end

#----------------------------------------------------------------------------------------------
  describe "#initialize" do
    #it "allows user to set a capacity" do
      #expect(DockingStation.new(8)).to (assigns(DockingStation.new.capacity)).to(8)
    #end

    it "uses default capacity if no capacity given" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end
end
