class RpgController < ApplicationController
  def index
  	session[:gold] = 0 unless session.has_key? :gold
  	# session[:gold] =session[:gold]+session[:farm]
  	# @comment= "You have earned", session['farm'], "from the farm"
  	# @comment= "You have earned", session['farm'], "from the farm"
  	session[:activities] = [] unless session.has_key? :activities


  end

  def farm
  	rand_num=rand(10..20)
  	session[:activities] << "You have earned #{rand_num} from farm!"
  	session[:gold]+= rand_num
  	redirect_to '/'
  end

  def cave
  	rand_num=rand(5..10)
  	session[:activities] << "You have earned #{rand_num} from cave!"
  	session[:gold]+= rand_num
  	redirect_to '/'
  end

  def casino
  	rand_num=rand(-50..50)
  	session[:activities] << "You have earned #{rand_num} from casino!"
  	session[:gold]+= rand_num
  	redirect_to '/'
  end

  def house
  	rand_num=rand(2..5)
  	session[:activities] << "You have earned #{rand_num} from house!"
  	session[:gold]+= rand_num
  	redirect_to '/'
  end
  def logout
  	session.clear
  	redirect_to '/'
  end
end
