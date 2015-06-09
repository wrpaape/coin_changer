class CoinChanger
  def changer(amount)
    coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }
    change = coins

    coins.each do |coin, val|
      num_coin = amount / val
      change[coin] = num_coin
      amount = amount % val
    end
    change
  end
end

