class MailerMailer < ApplicationMailer
    default from: 'notifications@example.com'
    
    def rent_email(mail)   
       @url  = 'http://www.gmail.com'
       @mail = mail
       puts mail
       puts "ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
       mail(to: 'greidy.valdes@gmail.com', subject: 'Request')
    end
end
