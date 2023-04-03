# frozen_string_literal: true

module LawyerAssistant
  # The ContractBuilder class is aimed to be use as the RackBuilder class. It recieves a contract and optionally
  # it can use a number or processors that will modify the contract at will.
  class ContractBuilder
    attr_accessor :contract, :processors

    def initialize(contract, &block)
      @contract = contract
      @processors = []
      instance_eval(&block) if block_given?
    end

    def use(processor)
      @processors << processor.new
    end

    def run
      @processors.inject(@contract) do |processing_contract, processor|
        processor.process(processing_contract)
      end

      @contract
    end
  end
end
