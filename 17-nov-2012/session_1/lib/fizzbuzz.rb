class FizzBuzz < Array
  def initialize length
    super (1..length).to_a
    process!
  end

  def [] number
    super number-1
  end

  protected
  def process!
    map! {|n| calc n }
  end

  def calc number
    if    (number % 3).zero?  and (number % 5).zero? then 'FizzBuzz'
    elsif (number % 3).zero? then 'Fizz'
    elsif (number % 5).zero? then 'Buzz'
    else  number end
  end
end
