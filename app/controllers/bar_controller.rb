class BarController < ApplicationController
    def aa
    @bar_list = Club.all
    @barmenu = Barmenu.all
    end
end


