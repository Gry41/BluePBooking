module ApplicationHelper
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
