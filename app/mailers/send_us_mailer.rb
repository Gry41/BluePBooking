class SendUsMailer < ApplicationMailer
    def us_email(mail)   
        @url  = 'http://www.gmail.com'
        @mail = mail
        
        mail(to: 'greidy.valdes@gmail.com', subject: 'Request')
     end
end
