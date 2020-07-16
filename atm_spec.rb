require './atm.rb'

RSpec.describe ATM do

  let(:t) { ATM.new(10) }

  context "可以領錢" do
    it "可以存錢" do
      t.deposit(10)
      expect(t.balance).to(be(20))
    end

    it "不能存負的" do
      t.deposit(-10)
      expect(t.balance).to(be(10))
    end

    it "不能存0的" do
      t.deposit(-10)
      expect(t.balance).to(be(10))
    end

  end

  context "領錢功能" do
    it "可以領" do
      t.withdraw(5)
      expect(t.balance).to be 5
    end

    it "不能領負的" do
        t.withdraw(-5)
        expect(t.balance).to be 10
    end

    it "不能領超過餘額" do
      t.withdraw(20)
      expect(t.balance).to be 10
    end

  end
end
