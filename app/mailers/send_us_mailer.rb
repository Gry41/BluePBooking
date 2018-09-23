class SendUsMailer < ApplicationMailer
    def us_email(mail)   
        @url  = 'http://www.gmail.com'
        @mail = mail
        
        mail(to: 'bparadisebooking@gmail.com', subject: 'Mail')
     end
end
