# frozen_string_literal: true

module LawyerAssistant
  # Abstract class of a contract processor
  class AbstractContractProcessor
    def initialize; end

    # receives a contract and returns a contract
    def process(_contract)
      raise 'method not implemented'
    end
  end
end
