require 'spec_helper'
require_relative '../herman'

describe Herman do
  it 'can read from file' do
    expect(Herman.new.read_instructions('./spec/fixtures/test_instructions.txt')).to eq({
      :position => ['1','2','N'],
      :movements => ['G','R','G','L','G']
    })
  end

  it 'can get end position' do
    expect(Herman.new.travel({
      :position => ['1','2','N'],
      :movements => ['G','R','G','L','G']
    })).to eq("2,4,N")
  end
end
