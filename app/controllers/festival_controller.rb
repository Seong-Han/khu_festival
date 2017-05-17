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
    @numofClubs=Club.count(:id) # 현재까지 등록된 주점 개수
    @numofBarmenus=Barmenu.count(:id)# 현재까지 등록된 메뉴 개수
    
    today_time=Time.new # 현재 시간 담고있는 table
    today_day=today_time.day
    
    @todayEngClub=Club.where(:day => today_day,:univ_id => 1)# 오늘의 공대 주점
    @todayForeignClub=Club.where(:day => today_day,:univ_id => 2) # 오늘의 외대 주점 
    @todayAndClub=Club.where(:day => today_day,:univ_id => 3)  # 오늘의 예대 주점
    @todaySportsClub=Club.where(:day => today_day,:univ_id => 4) # 오늘의 체대 주점
    @todayKicClub=Club.where(:day => today_day,:univ_id => 5) # 오늘의 국제대 주점
    @todayEniClub=Club.where(:day => today_day,:univ_id => 6) # 오늘의 자대 주점
    @todayClsClub=Club.where(:day => today_day,:univ_id => 7) # 오늘의 생대 주점
    @todayMultimediaClub=Club.where(:day => today_day,:univ_id => 8) # 오늘의 멀관 주점
    @todayStudentcenterClub=Club.where(:day => today_day,:univ_id => 9) # 오늘의 학관 주점
    
    end
    
    def info
        
    end
    

end
