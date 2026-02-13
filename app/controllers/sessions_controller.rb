class SessionsController < ApplicationController
  def show
  end

  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(params["sessions"])
    @session.save
    redirect_to sessions_path
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
  end
end
