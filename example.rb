# frozen_string_literal: true

require './lib/contract_builder'
require './lib/contract'
require './lib/processors/words_count_logger'
require './lib/processors/footer_adder'
require './lib/processors/base64_encoder'
# require './lib/processors/file_persister'

contract = Contract.new('Juan', '01/04/2023', 'content of a contract')

cb = LawyerAssistant::ContractBuilder.new(contract) do
  use LawyerAssistant::WordsCountLoggerCP
  # use LawyerAssistant::FilePersisterCP
  use LawyerAssistant::FooterAdderCP
  use LawyerAssistant::WordsCountLoggerCP
  use LawyerAssistant::Base64EncoderCP
  use LawyerAssistant::WordsCountLoggerCP
end

puts cb.run
