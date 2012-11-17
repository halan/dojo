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
    case number
    when ->(n) {fizzbuzz? n} then 'FizzBuzz'
    when ->(n) {fizz? n}     then 'Fizz'
    when ->(n) {buzz? n}     then 'Buzz'
    else number
    end
  end

  def fizz? number
    number.modulo(3).zero?
  end

  def buzz? number
    number.modulo(5).zero?
  end

  def fizzbuzz? number
    fizz? number and buzz? number
  end
end
