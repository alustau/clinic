module ApplicationHelper
    def flash_message    
        messages = ""
            
        [:success, :info, :warning, :danger].each do |type|
            if flash[type]
                messages += 
                    "<div class='alert alert-#{type} alert-dismissible' role='alert'>" +
                    "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>" +
                    "#{flash[type]}" +
                    "</div>"
            end
        end
        
        messages
    end
end
