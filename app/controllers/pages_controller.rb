class PagesController < ApplicationController
    def home
    end 
    
    def about
    end

    def contact
        @memebers = ["claire", "toni", "santi"]
        
        search = params[:member] # what is typed in the form
        if search
            @members = @members.select do |member|
                member.start_with? search.downcase
            end
        end
    end
end
