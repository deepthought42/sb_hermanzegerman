require 'spec_helper'

describe Herman do
  it 'can read from file' do
    expect(Herman.new.read_instructions('./fixtures/test_instructions')).to eq({
      :position => ['1','2','N'],
      :movements => ['G','R','G','L','G']
    })
  end
end
