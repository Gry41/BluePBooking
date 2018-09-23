class MailerMailer < ApplicationMailer
    default from: 'notifications@example.com'
    
    def rent_email(mail)   
       @url  = 'http://www.gmail.com'
       @mail = mail
       puts mail
       puts "ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
       mail(to: 'bparadisebooking@gmail.com', subject: 'Rent Request')
    end
end
