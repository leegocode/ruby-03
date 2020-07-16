require './atm.rb'

RSpec.describe ATM do
  context "可以領錢" do
    it "可以存錢" do

      t = ATM.new(10)

      t.deposit(10)
      expect(t.balance).to(be(20))
    end

  it "不能存負的" do
    t = ATM.new(10)
    t.deposit(-10)
    expect(t.balance).to(be(10))
  end

  it "不能存0的" do
    t = ATM.new(10)
    t.deposit(-10)
    expect(t.balance).to(be(10))
  end

end


context "領錢功能" do
end
end
