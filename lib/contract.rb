# frozen_string_literal: true

class Contract
  attr_accessor :author, :date, :content

  def initialize(author, date, content)
    @author = author
    @date = date
    @content = content
  end
end
