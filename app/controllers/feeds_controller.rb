class FeedsController < ApplicationController
  before_action :set_feed, only: %i[ show edit update destroy ]

  # GET /feeds or /feeds.json
  def index
    @feeds = Feed.where(user_id: session[:user_id])
    @feed = Feed.new
  end

  # GET /feeds/1 or /feeds/1.json
  def show
    redirect_to '/feeds' unless @feed.user_id == session[:user_id]
  end

  # GET /feeds/new
  def new
    @feed = Feed.new
  end

  # POST /feeds or /feeds.json
  def create
    @feed = Feed.new(feed_params)

    respond_to do |format|
      if @feed.save
        format.html { redirect_to feeds_url }
        # format.json { render :show, status: :created, location: @feed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feeds/1 or /feeds/1.json
  def destroy
    @feed.destroy

    respond_to do |format|
      format.html { redirect_to feeds_url, notice: "Feed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_params
      params.require(:feed).permit(:link, :user_id)
    end
end
