# frozen_string_literal: true

require 'contract_builder'

module LawyerAssistant
  RSpec.describe ContractBuilder do
    let(:contract) { Contract.new('Juan', '01/04/2023', 'This is a new contract') }
    let(:dummy_processor) { Class.new }

    describe '#new' do
      context 'when a contract and a block are given' do
        it 'should successfully create a new contract builder' do
          cb = ContractBuilder.new(contract) { use Class.new }
          expect(cb.contract).to eq contract
          expect(cb.processors.size).to eq 1
        end
      end

      context 'when a contract is given and a block is missing' do
        it 'should successfully create a new contract builder with no processors' do
          cb = ContractBuilder.new(contract)
          expect(cb.contract).to eq contract
          expect(cb.processors.size).to eq 0
        end
      end
    end

    describe '#use' do
      it 'should add the processor to the processors list instance variable' do
        cb = ContractBuilder.new(contract)
        cb.use(dummy_processor)
        expect(cb.processors.first.class).to eq dummy_processor
      end
    end

    describe '#run' do
      it 'should call process on each processor' do
        processor_instance = double(process: 'process')
        processor = Class.new
        allow(processor).to receive(:new) { processor_instance }
        cb = ContractBuilder.new(contract) { use processor }
        expect(processor_instance).to receive(:process)
        cb.run
      end
    end
  end
end
