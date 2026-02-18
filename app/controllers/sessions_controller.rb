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
    @session = Session.new(session_params)

    if @session.session_type === "count"
      @session.timer = nil
    end

    if @session.session_type === "timer"
      @session.card_count_total = nil
    end

    debugger
    @session.save
    redirect_to sessions_path
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to sessions_path
  end

  private

  def session_params
    params.require(:session).permit(:session_type,
      :max_input,
      :min_input,
      :time_minutes,
      :card_count_total,
      :card_count_addition,
      :card_count_subtraction,
      :card_count_multiplication,
      :card_count_division,
      :addition,
      :subtraction,
      :multiplication,
      :division)
  end
end
