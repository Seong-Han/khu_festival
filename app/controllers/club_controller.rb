class ClubController < ApplicationController
  def club_create # write에서 넘어온 것을 db에 저장해줌
  new_club=Club.new
  new_club.univ_id=params[:univ_id]
  new_club.department_name=params[:department_name]
  new_club.club_name=params[:club_name]   
  new_club.bar_name=params[:bar_name]    
  new_club.bar_location=params[:bar_location] 
  new_club.bar_feature=params[:bar_feature] 
  new_club.save
  
  univ_idStr=new_club.univ_id.to_s
  club_idStr=new_club.id.to_s
  url="/menuwrite/"+univ_idStr+"/"+club_idStr
  redirect_to url # menu 추가하는 단계로 넘어감
  end

  def club_destroy # db에서 동아리 삭제
  end

  def club_update # edit에서 넘어온 것을 db에 저장해줌
  end

  def club_edit # 수정페이지
  end


  def club_write # 동아리 정보 작성 
  @univ_id = params[:univ_id]
  @day=params[:day]
  end
  
  
  def menu_write # 주점 메뉴 작성
  @menus=Barmenu.where(:univ_id => params[:univ_id],:club_id => params[:club_id]) # 대학 id로 찾은 menu
    
  
  
  @menu_name =params[:menu_name]
  @menu_price =params[:menu_price]
  
  
  end
  
  def menu_create # menu_write 에서 작성된 주점 메뉴를 db에 저장
  new_menu=Barmenu.new
  new_menu.menu_name=params[:menu_name]
  new_menu.menu_price=params[:menu_price]
  new_menu.univ_id=params[:univ_id]
  new_menu.club_id=params[:club_id]
  new_menu.save
  univ_idStr=new_menu.univ_id.to_s
  club_idStr=new_menu.club_id.to_s
  url="/menuwrite/"+univ_idStr+"/"+club_idStr

  redirect_to url # 또 다시 추가하러 감.
  end

  def menu_destroy # 주점 메뉴를 삭제.

  end

  def menu_edit # 주점 메뉴 수정 
  
  end
  
  def menu_update # 주점메뉴 수정한것을 db에 저장
  
  end 
  
  
  def allwrite
        
  end
  
  
end
