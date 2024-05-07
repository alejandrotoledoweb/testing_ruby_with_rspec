# frozen_string_literal: true

class ProgrammingLanguage

  attr_accessor :name
  def initialize(name= 'ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('python') }

  it "should store the name of the language" do
    expect(language.name).to eq('python')
  end

  context 'with no arguments' do
    # this example does not look for the variable outside because it is declared in this scope
    let(:language) { ProgrammingLanguage.new }
    it "should show Ruby as default" do
      expect(language.name).to eq('ruby')
    end


  end
end
