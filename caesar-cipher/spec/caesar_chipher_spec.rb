require './caesar-cipher.rb'

describe "#caesar_cipher" do
  it "shifts letters forward" do
    expect(caesar_cipher("pikachu", 1)).to eql "qjlbdiv"
  end

  it "shifts letters backward" do
    expect(caesar_cipher("squirtle", -2)).to eql "qosgprjc"
  end

  it "shifts from z to a" do
    expect(caesar_cipher("zapdos", 3)).to eql "cdsgrv"
  end

  it "handles big shifts" do
    expect(caesar_cipher("pikachu", 27)).to eql "qjlbdiv"
  end

  it "shifts capital letters" do
    expect(caesar_cipher("Pikachu", 1)).to eql "Qjlbdiv"
  end

  it "neglects punctuation" do
    expect(caesar_cipher("Hola, Pikachu!", 1)).to eql "Ipmb, Qjlbdiv!"
  end
end