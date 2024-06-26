RSpec.describe 'raise error matcher' do

  def some_method
    x
  end

  class CustomError < StandardError; end

  it 'can check for any error' do
    # expect { some_method }.to raise_error

    # WARNING: Using the `raise_error` matcher without providing a specific error or message risks false positives, since `raise_error` will match when Ruby raises a `NoMethodError`, `NameError` or `ArgumentError`, potentially allowing the expectation to pass without even executing the method you are intending to call. Actual error raised was #<NameError: undefined local variable or method `x' for #<RSpec::ExampleGroups::RaiseErrorMatcher "can check for any error" (./spec/raise_error_matcher_spec.rb:7)>>. Instead consider providing a specific error class or message. This message can be suppressed by setting: `RSpec::Expectations.configuration.on_potential_false_positives = :nothing`. Called from /Users/alejandrotoledo/Documents/Udemy/testing_ruby_with_rspec/spec/raise_error_matcher_spec.rb:8:in `block (2 levels) in <top (required)>'.
  end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for a user-created error' do
    # expect { some_method }.to raise_error(CustomError)
  end

end
