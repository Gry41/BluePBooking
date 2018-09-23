class TaxiMailer < ApplicationMailer
    def taxi_email(mail)   
        @url  = 'http://www.gmail.com'
        @mail = mail        
        mail(to: 'bparadisebooking@gmail.com', subject: 'Taxi Request')
     end  
end
