class VendingMachine
  attr_accessor :user_balance_cents, :snack_count, :snack_price_cents

  def initialize(snack_price_cents, snack_count)
    @user_balance_cents = 0
    @snack_count = snack_count
    @snack_price_cents = snack_price_cents
  end

  def insert_coin(input_cents)
    @user_balance_cents += input_cents
  end

  def buy_snack
    if @user_balance_cents >= @snack_price_cents && @snack_count.positive?
      @snack_count -= 1
      @user_balance_cents -= @snack_price_cents
      puts "Snack bought! Enjoy your snack."
    else
      puts "Not enough balance or no snacks left."
    end
  end
end
