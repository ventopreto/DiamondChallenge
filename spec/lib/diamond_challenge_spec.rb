require "spec_helper"
require_relative "../../lib/diamond_challenge"

describe "DiamondChallenge" do
  it "Recebe uma expressão e retorna o número de diamantes" do
    expression = "<><><>"

    expect(DiamondChallenge.new.count_and_remove_diamonds(expression)).to eq 3
  end

  it "Recebe uma expressão e retorna o número de diamantes" do
    expression = "<.><.><.><.><.><.>"

    expect(DiamondChallenge.new.count_and_remove_diamonds(expression)).to eq 6
  end

  it "Recebe uma expressão e retorna o número de diamantes" do
    expression = "<<.>><<><<<>>.>>"

    expect(DiamondChallenge.new.count_and_remove_diamonds(expression)).to eq 7
  end

  it "Recebe uma expressão e retorna o número de diamantes" do
    expression = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"

    expect(DiamondChallenge.new.count_and_remove_diamonds(expression)).to eq 11
  end
end
