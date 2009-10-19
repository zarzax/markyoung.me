class NotificationMailer < ActionMailer::Base
  

  def contact(contact)
    subject    '[MarkYoung.me Feedback]: ' + contact.subject.to_s
    recipients 'mark@zarzax.com'
    from       contact.email.to_s
    sent_on    Time.now
    
    body       :contact => contact
  end

end
