module LawyerAssistant
  class FooterAdderCP < AbstractContractProcessor
    def process(contract)
      contract.content += 'A footer added'
      contract
    end
  end
end
