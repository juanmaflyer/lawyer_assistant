require_relative './abstract'

module LawyerAssistant
  class WordsCountLoggerCP < AbstractContractProcessor
    def process(contract)
      puts contract.content.split.count
      contract
    end
  end
end
