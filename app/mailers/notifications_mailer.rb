class NotificationsMailer < ActionMailer::Base

  default :from => "healthcareimagingsales@gmail.com"
  default :to => "joneserice@gmail.com"
  
  def new_message(message)
    @message = message
    mail(:subject => "#{message.fromuser_id} | #{message.product_id}", :body => "#{message.body}")
  end

end
