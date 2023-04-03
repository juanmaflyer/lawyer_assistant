# frozen_string_literal: true

require_relative './abstract'

module LawyerAssistant
  # Abstract class of a contract processor
  class AbstractContractProcessor
    def initialize; end

    # receives a contract and returns a contract
    def process(_contract)
      raise NotImplementedError
    end
  end
end
