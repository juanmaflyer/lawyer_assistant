require_relative './abstract'
require 'base64'

module LawyerAssistant
  class Base64EncoderCP < AbstractContractProcessor
    def process(contract)
      contract.content = Base64.encode64(contract.content)
      contract
    end
  end
end
