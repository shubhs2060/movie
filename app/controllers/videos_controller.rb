class VideosController < ApplicationController
    before_action :is_admin?, only: [:new, :edit, :update, :destroy]

    before_action :set_video, only: [:show, :edit, :update, :destroy]

  before_action :set_movie
  before_action :authenticate_user!

  def index
    @videos = Video.order('created_at DESC')
  end

  def show
  end


  # GET /reviews/1/edit
  def edit
  end

  def new
    @video = Video.new
  end

  def create
  	    @video = Video.new(video_params)
  	   @video.user_id = current_user.id
  	@video.movie_id = @movie.id
 
  if @video.save
    flash[:success] = 'Video added!'
    redirect_to @movie
  else
    render :new
  end
end
def update
    respond_to do |format|
      if @video.update(review_params)
        format.html { redirect_to @video, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
private

def set_video
      @video = Video.find(params[:id])
    end

def set_movie
  @movie = Movie.find(params[:movie_id])
end

def video_params
  params.require(:video).permit(:link)
end

def is_admin?
     if current_user && current_user.try(:admin) == true
     else
       redirect_to root_path
       flash[:danger] = "Access Denied"
     end
    end

end