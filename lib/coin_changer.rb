class CoinChanger
  def changer(amount)
    coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }
    change = coins

    coins.each do |coin, val|
      change[coin] = amount / val
      amount %= val
    end
    change
  end
end

