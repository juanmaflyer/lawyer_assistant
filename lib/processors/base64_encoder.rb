# frozen_string_literal: true

require_relative './abstract'
require 'base64'

module LawyerAssistant
  # Processor that encodes a contract content in Base64
  class Base64EncoderCP < AbstractContractProcessor
    def process(contract)
      contract.content = Base64.encode64(contract.content)
      contract
    end
  end
end
