class Marker
  def initialize(secret, guess)
    @secret, @guess = secret, guess
  end

  def exact_match_count
    (0..3).inject(0) do |count, index|
      count + ( exact_match?(@guess, index) ? 1 : 0 )
    end
  end

  def number_match_count
    (0..3).inject(0) do |count, index|
      count + ( number_match?(@guess, index) ? 1 : 0 )
    end
  end

  def exact_match?(guess, index)
    @guess[index] == @secret[index]
  end

  def number_match?(guess, index)
    @secret.include?(@guess[index]) && !exact_match?(guess, index)
  end
end