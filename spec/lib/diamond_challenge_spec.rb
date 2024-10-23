require "spec_helper"
require_relative "../../lib/diamond_challenge"

describe DiamondChallenge do
  subject { described_class.new }

  describe  "#count_and_remove_diamonds" do
    context "Quando a expressão contem diamantes" do
      let(:first_expression) { "<><><>" }
      let(:second_expression) { "<<.>><<><<<>>.>>" }
      let(:third_expression) { "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>" }

      it "retorna o número correto de diamantes para a primeira expressão" do
        expect(subject.count_and_remove_diamonds(first_expression)).to eq 3
      end

      it "retorna o número correto de diamantes para a segunda expressão" do
        expect(subject.count_and_remove_diamonds(second_expression)).to eq 7
      end

      it "retorna o número correto de diamantes para a terceira expressão" do
        expect(subject.count_and_remove_diamonds(third_expression)).to eq 11
      end
    end

    context "Quando a expressão não contém diamantes" do
      it "retorna 0" do
        expect(subject.count_and_remove_diamonds("....")).to eq 0
      end
    end

    context "Quando a expressão está vazia" do
      it "retorna 0" do
        expect(subject.count_and_remove_diamonds("")).to eq 0
      end
    end
  end
end
