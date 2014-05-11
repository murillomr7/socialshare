class ShareRequestsController < ApplicationController
  before_action :authenticate_member!
  before_action :set_share_request, only: [:show, :edit, :update, :destroy]

  # GET /share_requests
  # GET /share_requests.json
  def index
    @share_requests = ShareRequest.all
  end

  # GET /share_requests/1
  # GET /share_requests/1.json
  def show
  end

  # GET /share_requests/new
  def new
    @share_request = ShareRequest.new
    @share_request.member_id = current_member.id
  end

  # GET /share_requests/1/edit
  def edit
  end

  # POST /share_requests
  # POST /share_requests.json
  def create
    @share_request = ShareRequest.new(share_request_params)

    respond_to do |format|
      if @share_request.save
        format.html { redirect_to @share_request, notice: 'Share request was successfully created.' }
        format.json { render :show, status: :created, location: @share_request }
      else
        format.html { render :new }
        format.json { render json: @share_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /share_requests/1
  # PATCH/PUT /share_requests/1.json
  def update
    respond_to do |format|
      if @share_request.update(share_request_params)
        format.html { redirect_to @share_request, notice: 'Share request was successfully updated.' }
        format.json { render :show, status: :ok, location: @share_request }
      else
        format.html { render :edit }
        format.json { render json: @share_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /share_requests/1
  # DELETE /share_requests/1.json
  def destroy
    @share_request.destroy
    respond_to do |format|
      format.html { redirect_to share_requests_url, notice: 'Share request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share_request
      @share_request = ShareRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_request_params
      params.require(:share_request).permit(:title, :eventDate, :description, :member_id)
    end
end
