class FizzBuzz < Array

  @@fizz = 3
  @@buzz = 5

  def initialize input
    super [*range(input)]
    process!
  end

  def [] number
    super number-1
  end

  protected
  def range input
    if input.respond_to? :each then input else (1..input) end
  end

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
    number.modulo(@@fizz).zero?
  end

  def buzz? number
    number.modulo(@@buzz).zero?
  end

  def fizzbuzz? number
    fizz? number and buzz? number
  end
end
