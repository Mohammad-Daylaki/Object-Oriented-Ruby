class BankAccount
  def transfer
    # find_account_number # WILL WORK (IMPLICIT)
    self.find_account_number # WILL NOT WORK (EXPLICIT)
    @@all
  end

  private

  @@all =[]

  def find_account_number

  end
end
#=> https://makandracards.com/makandra/15165-protected-and-private-methods-in-ruby


 class OtherBankAccount
   def transfer
    find_account_number # WILL WORK (IMPLICIT)
    self.find_account_number # WILL WORK (EXPLICIT)
  end

  protected

  def find_account_number
  end
end
