# frozen_string_literal: true

module LawyerAssistant
  # add comment
  class ContractBuilder
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
