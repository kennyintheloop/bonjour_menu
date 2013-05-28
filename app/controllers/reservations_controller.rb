class ReservationsController < ApplicationController
  before_filter :authorize_user, :only => [ :show, :edit, :update, :destroy]

  def authorize_user
    @user = User.find(session[:user_id])
    if @user.id != session[:user_id]
      redirect_to root_url, notice: "Nice Try"
    end
  end

  def index
    @reservations = Reservation.where("user_id = ?",session[:user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
    @reservation = Reservation.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservations/new
  # GET /reservations/new.json
  def new
    if session[:user_id]
      @reservation = Reservation.new
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @reservation }
    end
    else
      redirect_to root_url
    end

  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.user_id = session[:user_id]
    @user = User.find(session[:user_id])
    @user.points_earned = @user.points_earned + 10
    @user.save
    UserMailer.reserved_email(@user).deliver
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render json: @reservation, status: :created, location: @reservation }
      else
        format.html { render action: "new" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reservations/1
  # PUT /reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      if @reservation.update_attributes(params[:reservation])
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url }
      format.json { head :no_content }
    end
  end
end
