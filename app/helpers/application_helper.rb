module ApplicationHelper
    def PassFace
        contact = Contact.all.order("id").each
        if contact.count >= 3
            b=contact.next
            face_link = contact.next
            return face_link.name
        end
        return ""
    end
    def PassInsta
        contact = Contact.all.order("id").each
        if contact.count >= 3
        contact.next
        contact.next 
        insta_link = contact.next
        return insta_link.name   
        
       end
       return ""
      end  
    
    def class_navbar(text)
        
        puts request.path
        if text=="home"
            if request.path == "/"
                return "actived"
            end
        end
        if text=="rent"
            if request.path.include? "home"
                return "colors a"
            end
        end
        
        if request.path.include? text
            
            return "actived" 
        end
        return "colors a" 
    end

end
