# frozen_string_literal: true

require 'contract'

RSpec.describe Contract, '#new' do
  context 'with author, date and content parameters present' do
    it 'should successfully create a new contract' do
      contract = Contract.new('Juan', '01/04/2023', 'This is a new contract')
      expect(contract.author).to eq 'Juan'
      expect(contract.date).to eq '01/04/2023'
      expect(contract.content).to eq 'This is a new contract'
    end
  end
end
