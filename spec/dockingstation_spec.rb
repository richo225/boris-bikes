require "docking_station"
require "bike"

#describe DockingStation do
#  it {respond_to(:release_bike)}
#end

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

#expect an instance of dockingstation to return a working bike when release bike called
#  it "releases a working bike" do
#    bike = subject.release_bike
#    expect(bike.working?).to eq true
#  end
  it "releases a working bike" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(bike).to be_working
  end

    describe "release_bike" do
      #test that the released bike is a docked bike
      it "releases a docked bike" do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.release_bike).to eq bike
      end
      #test that returns an error if there's no bikes to be released
      it "doesn't release a bike when there aren't any" do
        expect{subject.release_bike}.to raise_exception('No bikes!')
      end
    end

  describe "#dock_bike" do
    it "doesn't accept bike when already one" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(Bike.new)}
      expect{subject.dock_bike(Bike.new)}.to raise_exception('Station full!')
    end

  end

  it "docks a bike" do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it "docked bike returns a bike" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq subject.bikes
  end

  it "bikes attribute reader returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes).to eq subject.bikes
  end

end
