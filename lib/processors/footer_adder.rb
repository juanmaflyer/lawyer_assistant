# frozen_string_literal: true

require_relative './abstract'

module LawyerAssistant
  # Processor that adds a custom footer to the contract
  class FooterAdderCP < AbstractContractProcessor
    def process(contract)
      contract.content += 'A footer added'
      contract
    end
  end
end
