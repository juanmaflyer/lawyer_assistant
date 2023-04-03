# frozen_string_literal: true

require 'processors/base64_encoder'

module LawyerAssistant
  RSpec.describe Base64EncoderCP do
    let(:contract) { Contract.new('Juan', '01/04/2023', 'This is a new contract') }

    describe '#process' do
      it 'should Base64 encode the contract content' do
        cb = ContractBuilder.new(contract) { use Base64EncoderCP }
        encoded_content = Base64.encode64(cb.contract.content)
        cb.run
        expect(cb.contract.content).to eq encoded_content
      end
    end
  end
end
