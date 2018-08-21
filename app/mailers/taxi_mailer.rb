class TaxiMailer < ApplicationMailer
    def taxi_email(mail)   
        @url  = 'http://www.gmail.com'
        @mail = mail        
        mail(to: 'greidy.valdes@gmail.com', subject: 'Taxi Request')
     end  
end
