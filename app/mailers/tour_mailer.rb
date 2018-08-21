class TourMailer < ApplicationMailer
    def tour_email(mail)   
        @url  = 'http://www.gmail.com'
        @mail = mail        
        mail(to: 'greidy.valdes@gmail.com', subject: 'Tour Request')
     end 
end
