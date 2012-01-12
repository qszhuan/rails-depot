require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "just_test" do
    mail = Notifier.just_test
    assert_equal "TEST", mail.subject
    assert_equal ["zhuanqingshan@163.com"], mail.to
    assert_equal ["zhuanqingshan@163.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
