class AdminController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      if @user.name != "admin"
        redirect_to root_url, notice: "Nice Try"
      end
      @reservation_list = Reservation.where('appoint_date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
      @customer_list = User.all()
    else
      redirect_to root_url
    end
  end
end
