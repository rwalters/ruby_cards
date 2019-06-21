require 'cards'

RSpec.describe Cards do
  subject(:cards){ described_class }

  it 'exists' do
    expect{ cards.() }.not_to raise_error
  end

  it 'is a sentence' do
    expect(cards.()).to eq("test")
  end
end
