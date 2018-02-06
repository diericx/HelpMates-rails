class HelpSessionsController < ApplicationController
  before_action :set_help_session, only: [:show, :edit, :update, :destroy]

  # GET /help_sessions
  # GET /help_sessions.json
  def index
    @help_sessions = HelpSession.where('user_id=? OR tutor_id=?', current_user.id, current_user.id)
  end

  # GET /help_sessions/1
  # GET /help_sessions/1.json
  def show
    @is_tutor = current_user.id == @help_session.tutor_id
    @help_session.user = User.find(@help_session.user_id)
    @help_session.tutor = User.find(@help_session.tutor_id)
  end

  # GET /help_sessions/new
  def new
    @help_session = HelpSession.new
  end

  # GET /help_sessions/1/edit
  def edit
  end

  # POST /help_sessions
  # POST /help_sessions.json
  def create
    @help_session = HelpSession.new(help_session_params)

    respond_to do |format|
      if @help_session.save
        format.html { redirect_to @help_session, notice: 'Help session was successfully created.' }
        format.json { render :show, status: :created, location: @help_session }
      else
        format.html { render :new }
        format.json { render json: @help_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_sessions/1
  # PATCH/PUT /help_sessions/1.json
  def update
    respond_to do |format|
      if @help_session.update(help_session_params)
        format.html { redirect_to @help_session, notice: 'Help session was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_session }
      else
        format.html { render :edit }
        format.json { render json: @help_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_sessions/1
  # DELETE /help_sessions/1.json
  def destroy
    @help_session.destroy
    respond_to do |format|
      format.html { redirect_to help_sessions_url, notice: 'Help session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def start_session
    session = HelpSession.find(params[:id])
    is_tutor = session.tutor_id == current_user.id

    # set correct "started" attribute to true
    if is_tutor == true
      session.tutor_started = true
    else 
      session.user_started = true
    end
    # set start time if both started
    if session.tutor_started && session.user_started
      session.started_at = Time.now
    end
    
    session.save

    respond_to do |format|
      format.html { redirect_to session, notice: 'Help session was started.' }
      format.json { render :show, status: :ok, location: session }
    end
  end

  def end_session
    session = HelpSession.find(params[:id])
    is_tutor = session.tutor_id == current_user.id

    # set correct "started" attribute to true
    if is_tutor == true
      session.tutor_ended = true
    else 
      session.user_ended = true
    end
    # set start time if both started
    if session.tutor_ended && session.user_ended
      session.ended_at = Time.now
    end
    session.save

    respond_to do |format|
      format.html { redirect_to session, notice: 'Help session was ended.' }
      format.json { render :show, status: :ok, location: session }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_session
      @help_session = HelpSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_session_params
      params.require(:help_session).permit(:user_id, :tutor_id, :course_id, :user_started, :tutor_started, :started_at, :user_ended, :tutor_ended, :ended_at, :start, :end, :cancelled, :cancelled_by, :message)
    end
end
