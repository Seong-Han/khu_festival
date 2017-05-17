class ClubController < ApplicationController
  before_action :authenticate
  before_action :authenticate_admin
  
  
  def club_create # write에서 넘어온 것을 db에 저장해줌
  new_club=Club.new
  new_club.day=params[:day]
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
  # :univ_id, :club_id를 통해 메뉴 정보를 먼저 삭제
  # 그다음에 :univ_id, :club_id를 통해 동아리 정보를 삭제
  @club = Club.where(:univ_id => params[:univ_id],:id => params[:club_id]).take
  @barmenus = Barmenu.where(:univ_id => params[:univ_id],:club_id => params[:club_id])
  @barmenus.each do |barmenu|
  barmenu.destroy
  end
  @club.destroy
  
  redirect_to '#'
  end

  def club_update # club_edit.html.erb 에서 넘어온 것을 db에 저장해줌
  @registeredClub=Club.find(params[:club_id])
  @registeredClub.department_name=params[:department_name]
  @registeredClub.club_name=params[:club_name]
  @registeredClub.bar_name=params[:bar_name]
  @registeredClub.bar_location=params[:bar_location]
  @registeredClub.bar_feature=params[:bar_feature]
  @registeredClub.save
  club_idStr=@registeredClub.id.to_s
  univ_idStr=@registeredClub.univ_id.to_s

  url="/menuedit/"+univ_idStr+"/"+club_idStr
  redirect_to url  # 메뉴 수정 페이지로 이동.
  end

  def club_edit # 수정페이지
    
  
  @univ_id=params[:univ_id]
  @club_id=params[:club_id]
  @registeredClub=Club.find(params[:club_id]) # 등록했었던 club 을 찾아온다.
  
  
  end


  def club_write # 동아리 정보 작성 
  @univ_id = params[:univ_id]
  @day=params[:day]
  
  end
  
  
  def menu_write # 주점 메뉴 작성
  
  
  @menus=Barmenu.where(:univ_id => params[:univ_id],:club_id => params[:club_id]) # 대학 id,club id로 찾은 menu
 # @menus=Barmenu.all

  
  @menu_name = params[:menu_name]
  @menu_price = params[:menu_price]
  
  
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
  @menu=Barmenu.find(params[:menu_id])
  @menu.destroy
  @univ_id=params[:univ_id]
  @club_id=params[:club_id]
  univ_idStr=@univ_id.to_s
  club_idStr=@club_id.to_s
  url="/menuedit/"+univ_idStr+"/"+club_idStr
  redirect_to url
  end

  def menu_edit # 주점 메뉴 수정 
  @club_id=params[:club_id]
  @univ_id=params[:univ_id]
  @menus=Barmenu.where(:univ_id => params[:univ_id],:club_id => params[:club_id])
  
  
  end
  
  def menu_update # menu_edit에서 수정한것을 db에 저장
  new_menu=Barmenu.new
  
  new_menu.menu_name=params[:menu_name]
  new_menu.menu_price=params[:menu_price]
  new_menu.univ_id=params[:univ_id]
  new_menu.club_id=params[:club_id]
  new_menu.save
  univ_idStr=new_menu.univ_id.to_s
  club_idStr=new_menu.club_id.to_s
  url="/menuedit/"+univ_idStr+"/"+club_idStr

  redirect_to url # 또 다시 추가하러 감.
  
  end 
  
  
  def allwrite
        
  end
  
  
end
