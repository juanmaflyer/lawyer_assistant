# frozen_string_literal: true

require_relative './abstract'

module LawyerAssistant
  # Processor that persists the contract to a file
  class FilePersisterCP < AbstractContractProcessor
    def process(contract)
      # persiste the contract to a file in disk
      # File.write('contract.txt', contract.content)
      contract
    end
  end
end
