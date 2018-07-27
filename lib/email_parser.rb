# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parse_list = @emails.split(' ')
    parse_list.each_with_index do |item, index|
      parse_list[index] = item.sub(',', '')
    end
    parse_list.uniq
  end

end
