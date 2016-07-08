require "bike"

describe Bike do
  it 'responds to broken?' do
    expect(subject).to respond_to :broken?
  end

  it 'can be reported broken' do
    expect(subject).to respond_to :report_broken
  end
end
