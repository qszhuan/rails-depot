class SayController < ApplicationController
  def hello
    @time = Time.now
    Notifier.just_test.deliver

    Net::SMTP.start("smtp.163.com",25,"163.com","killera","password",:login) do |smtp|  
      smtp.send_message "sss", "killera@163.com", "killera@163.com"  
    end
    
  end

  def goodbye
    @files = Dir.glob('*')
  end

end
