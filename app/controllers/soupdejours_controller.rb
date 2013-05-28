class SoupdejoursController < ApplicationController
  # GET /soupdejours
  # GET /soupdejours.json
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      if @user.name != "admin"
        redirect_to root_url, notice: "Only admin can access the page"
      end
      @soupdejours = Soupdejour.all
    else
      redirect_to root_url
    end
  end

  # GET /soupdejours/1
  # GET /soupdejours/1.json
  def show
    @soupdejour = Soupdejour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soupdejour }
    end
  end

  # GET /soupdejours/new
  # GET /soupdejours/new.json
  def new
    @soupdejour = Soupdejour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soupdejour }
    end
  end

  # GET /soupdejours/1/edit
  def edit
    @soupdejour = Soupdejour.find(params[:id])
  end

  # POST /soupdejours
  # POST /soupdejours.json
  def create
    @soupdejour = Soupdejour.new(params[:soupdejour])

    respond_to do |format|
      if @soupdejour.save
        format.html { redirect_to @soupdejour, notice: 'Soupdejour was successfully created.' }
        format.json { render json: @soupdejour, status: :created, location: @soupdejour }
      else
        format.html { render action: "new" }
        format.json { render json: @soupdejour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soupdejours/1
  # PUT /soupdejours/1.json
  def update
    @soupdejour = Soupdejour.find(params[:id])

    respond_to do |format|
      if @soupdejour.update_attributes(params[:soupdejour])
        format.html { redirect_to @soupdejour, notice: 'Soupdejour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @soupdejour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soupdejours/1
  # DELETE /soupdejours/1.json
  def destroy
    @soupdejour = Soupdejour.find(params[:id])
    @soupdejour.destroy

    respond_to do |format|
      format.html { redirect_to soupdejours_url }
      format.json { head :no_content }
    end
  end
end
