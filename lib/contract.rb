# frozen_string_literal: true

# This is a basic contract class that models a contract with an author, date and content.
class Contract
  attr_accessor :author, :date, :content

  def initialize(author, date, content)
    @author = author
    @date = date
    @content = content
  end
end
