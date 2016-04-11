require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "adds a bike to its inventory when a bike is docked" do
    expect(subject.dock).to eq 'Thanks for returning the bike.'
  end
end

#let(:ot) { OrangeTree.new }
#  let(:ds) { DockingStation.new}
