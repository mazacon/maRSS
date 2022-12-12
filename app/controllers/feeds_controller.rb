class FeedsController < ApplicationController
  before_action :set_feed, only: %i[ show edit update destroy ]

  # GET /feeds
  def index
    @feeds = Feed.where(user_id: session[:user_id])
    @feed = Feed.new
  end

  # GET /feeds/:id
  def show
    redirect_to feeds_path unless @feed.user_id == session[:user_id]
  end

  # GET /feeds/new
  def new
    @feed = Feed.new
  end

  # POST /feeds
  def create
    @feed = Feed.new(feed_params)

    respond_to do |format|
      if @feed.save
        redirect_to feeds_path
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  # DELETE /feeds/:id
  def destroy
    @feed.destroy

    # TODO: catch notice in erb
    redirect_to feeds_path, notice: "Feed was successfully destroyed."
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
