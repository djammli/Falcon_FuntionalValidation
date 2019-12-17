# require 'whitespace'
# require 'active_support/test_case'
# require 'test/unit'

@ContinueOnFailure
def raise_and_rescue
  begin
    puts 'I am before the raise.'
    raise 'An error has occured.'
    puts 'I am after the raise.'
  rescue Exception => msg
    puts 'I am rescued.'
    @ContinueOnFailure

    assert_not_same(1,1)
    assert_not_same(1,2)
    assert_not_same(2,2)

    puts msg
  end
  puts 'I am after the begin block.'
end
@ContinueOnFailure
When(/^simple test$/) do
  assert_equal(dbCrawler,$lastJsonResponse[1]['server_name'])
end


def continue_test
  begin
    yield
  rescue Test::Unit::AssertionFailedError => e
    self.send(:add_failure, e.message, e.backtrace)
  end
end


Given(/^parm test$/) do


  class BetterDeclarativeTest < ActiveSupport::TestCase
    ["hello world", "foo bar", "foo", "bar\n"].each do |input|
      test "#{input} includes whitespace" do
        assert includes_whitespace? input
      end
    end
  end
end