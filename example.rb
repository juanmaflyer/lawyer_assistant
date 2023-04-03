# frozen_string_literal: true

require './lib/contract_builder'
require './lib/contract'
require './lib/processors/words_count_logger'
require './lib/processors/footer_adder'
require './lib/processors/base64_encoder'

contract = Contract.new('Juan', '13/03/1988', 'content of a contract')

cb = LawyerAssistant::ContractBuilder.new(contract) do
  use LawyerAssistant::WordsCountLoggerCP
  # use Base64EncoderCP
  # use FilePersisterCP
  use LawyerAssistant::FooterAdderCP
  use LawyerAssistant::WordsCountLoggerCP
  use LawyerAssistant::Base64EncoderCP
  use LawyerAssistant::WordsCountLoggerCP
end

puts cb.run