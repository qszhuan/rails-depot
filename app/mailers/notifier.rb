class Notifier < ActionMailer::Base
  default :from => "zhuanqingshan@163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.just_test.subject
  #
  def just_test
    @greeting = "Hi"

    mail :to => "zhuanqingshan@163.com", :subject => "TEST"
  end
end
