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
    
    # @numofBarmenus=Barmenu.count(:id)# 현재까지 등록된 메뉴 개수
    
    today_time=Time.new # 현재 시간 담고있는 table

    today_day=today_time.in_time_zone("Seoul").day
    
    @today_day=today_day    #  몇일인지 .
    @numofTodayClubs=Club.where(:day => today_day).count() # 오늘의 주점들
    # 연예인 정보 출력 구현위한 코드
        if today_day == 22
            @starinfo="창모,기리보이가 어딨는지 실시간으로 공유하세요!"
        elsif today_day == 23
            @starinfo="EXID,10cm,백아연,키썸,슈퍼비,산이가 어딨는지 실시간으로 공유하세요!"
        elsif today_day == 24
            @starinfo="Bewhy가 어딨는지 실시간으로 공유하세요!"
        elsif today_day == 25
            @starinfo="PSY,매드클라운,어쿠스틱 콜라보가 어딨는지 실시간으로 공유하세요!"
        else
            @starinfo=""
        end
    
    @todayEngClub=Club.where(:day => today_day,:univ_id => 1)# 오늘의 공대 주점
    @numoftodayEngClub=Club.where(:day => today_day,:univ_id => 1).count()# 오늘의 공대 주점 개수
    @todayForeignClub=Club.where(:day => today_day,:univ_id => 2) # 오늘의 외대 주점 
    @numoftodayForeignClub=Club.where(:day => today_day,:univ_id => 2).count()# 오늘의 외대 주점 개수
    @todayAndClub=Club.where(:day => today_day,:univ_id => 3)  # 오늘의 예대 주점
    @numoftodayAndClub=Club.where(:day => today_day,:univ_id => 3).count()# 오늘의 예대 주점 개수
    @todaySportsClub=Club.where(:day => today_day,:univ_id => 4) # 오늘의 체대 주점
    @numoftodaySportsClub=Club.where(:day => today_day,:univ_id => 4).count()# 오늘의 체대 주점 개수
    @todayKicClub=Club.where(:day => today_day,:univ_id => 5) # 오늘의 국제대 주점
    @numoftodayKicClub=Club.where(:day => today_day,:univ_id => 5).count()# 오늘의 국제대 주점 개수
    @todayEniClub=Club.where(:day => today_day,:univ_id => 6) # 오늘의 자대 주점
    @numoftodayEniClub=Club.where(:day => today_day,:univ_id => 6).count()# 오늘의 자대 주점 개수
    @todayClsClub=Club.where(:day => today_day,:univ_id => 7) # 오늘의 생대 주점
    @numoftodayClsClub=Club.where(:day => today_day,:univ_id => 7).count()# 오늘의 생대 주점 개수
    @todayApplsciClub=Club.where(:day => today_day,:univ_id => 8) # 오늘의 응용대 주점
    @numoftodayApplsciClub=Club.where(:day => today_day,:univ_id => 8).count()# 오늘의 응용대 주점 개수
    @todayStudentcenterClub=Club.where(:day => today_day,:univ_id => 9) # 오늘의 학관 주점
    @numoftodayStudentcenterClub=Club.where(:day => today_day,:univ_id => 9).count()# 오늘의 학관 주점 개
    end
    
    def info
        
    end
    

end
