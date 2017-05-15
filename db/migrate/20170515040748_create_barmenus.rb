class CreateBarmenus < ActiveRecord::Migration
  def change
    create_table :barmenus do |t|
      t.string :menu_name #메뉴 이름 
      t.integer :menu_price #메뉴 가격
      t.integer :univ_id # 단과 대학 id
      t.integer :club_id # 동아리  id
      t.timestamps null: false
    end
  end
end
