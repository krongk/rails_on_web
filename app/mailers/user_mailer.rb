class UserMailer < ActionMailer::Base
  default from: "from@example.com"
 
  def notice_contact_email(contact)
    @contact = contact
    mail(:to => ['29928649@qq.com', '2576455908@qq.com'], :subject => %{#{Time.now().strftime("%Y-%m-%d")}: Notice of newly insurance customer})
  end
end
