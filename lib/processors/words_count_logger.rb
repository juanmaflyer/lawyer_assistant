# frozen_string_literal: true

require_relative './abstract'

module LawyerAssistant
  # Processor that logs the number of words in the contract
  class WordsCountLoggerCP < AbstractContractProcessor
    def process(contract)
      puts contract.content.split.count
      contract
    end
  end
end
