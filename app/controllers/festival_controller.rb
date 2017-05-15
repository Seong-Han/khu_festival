class FestivalController < ApplicationController
    before_action :authenticate, only: [:write, :sns]
    before_action :authenticate_admin, only: [:write]
  
 
    def day1
    
        
    end
    
    
    def day2
            
    end
            
            
    def day3
        
    end
    
    def day4
    
    end
    
    def index
        
    end
    

            
            
    def eng # 공과대학
    @clubs=Club.all
    
    
    end
    

end
