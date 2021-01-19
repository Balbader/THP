                                require_relative '../lib/app.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(14)).to eq(false)
  end
end

describe "here we find the sum of the multiples in the defined range" do
  it "should return the sum of the sorted multiples " do
    expect(sum_of_3_or_5_multiples?(10)).to eq(23)
    expect(sum_of_3_or_5_multiples?(11)).to eq(33)
    expect(sum_of_3_or_5_multiples?(1001)).to eq("Error")
  end
end

describe "what the hell are you saying" do
  it "should return each letter of the string incremented by nb in ascii value" do
    expect(ceasar_cypher("What a string!", 5)).to eq("Bnfy f xywnsl!")
    expect(ceasar_cypher("A", 1)).to eq("B")
    expect(ceasar_cypher("Abc", 26)).to eq("Zab")
    expect(ceasar_cypher("!12@", 22)).to eq("!12@")
  end
end