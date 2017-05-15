class BarController < ApplicationController
    def showBar # 날짜 , univ_id를 params로 받아서 주점정보들 출력
        @Bars=Club.where(:day => params[:day],:univ_id => params[:univ_id]) #날짜, univ_id로 DB에서 해당하는 Club(주점)을 찾겠다.
        
        
    end
end


