class BankAccount

    attr_reader :name
    attr_accessor :balance, :status
  
    def initialize(name)
      @name = name
      @balance = 1000
      @status = "open"
    end
  
    def deposit(money)
      @balance += money
    end
  
    def display_balance
      "Your balance is $#{@balance}."
    end
  
    def valid?
      self.status == "open" && self.balance > 0
    end
  
    def close_account
      self.status = "closed"
      self.balance = 0
    end
  
  end