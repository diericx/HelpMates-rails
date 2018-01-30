class HelpSessionRequestsController < ApplicationController
  before_action :set_help_session_request, only: [:show, :edit, :update, :destroy]

  # GET /help_session_requests
  # GET /help_session_requests.json
  def index
    @help_session_requests = HelpSessionRequest.all
  end

  # GET /help_session_requests/1
  # GET /help_session_requests/1.json
  def show
  end

  # GET /help_session_requests/new
  def new
    @help_session_request = HelpSessionRequest.new
  end

  # GET /help_session_requests/1/edit
  def edit
  end

  # POST /help_session_requests
  # POST /help_session_requests.json
  def create
    @help_session_request = HelpSessionRequest.new(help_session_request_params)

    respond_to do |format|
      if @help_session_request.save
        format.html { redirect_to @help_session_request, notice: 'Help session request was successfully created.' }
        format.json { render :show, status: :created, location: @help_session_request }
      else
        format.html { render :new }
        format.json { render json: @help_session_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_session_requests/1
  # PATCH/PUT /help_session_requests/1.json
  def update
    respond_to do |format|
      if @help_session_request.update(help_session_request_params)
        format.html { redirect_to @help_session_request, notice: 'Help session request was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_session_request }
      else
        format.html { render :edit }
        format.json { render json: @help_session_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_session_requests/1
  # DELETE /help_session_requests/1.json
  def destroy
    @help_session_request.destroy
    respond_to do |format|
      format.html { redirect_to help_session_requests_url, notice: 'Help session request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_session_request
      @help_session_request = HelpSessionRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_session_request_params
      params.require(:help_session_request).permit(:user_id, :tutor_id, :course_id, :start, :end, :accepted, :denied, :denied_by, :message)
    end
end
