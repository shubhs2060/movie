class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :top_movies, :games]

  before_action :is_admin?, only: [:new, :edit, :update, :destroy]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  def index
    @search = Movie.search(params[:q])
    @movies = @search.result(distinct: true).order("created_at DESC")

  end


  def show
    @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
    @videos = Video.where(movie_id: @movie.id).order("created_at DESC")

    if @reviews.blank?
          @avg_review = 0
        else
          @avg_review = @reviews.average(:rating).round(2)
        end
  end

  def new
    @movie = current_user.movies.build
  end

  def edit
  end

  def games
  end

def top_movies
  @movies = Movie.joins(:reviews).group("movies.id").order("count(movies.id) DESC")
end


  def create
    @movie = current_user.movies.build(movie_params)
    @newsletters = Newsletter.all

    respond_to do |format|
      if @movie.save
        UserMailer.subscription_confirmation(@newsletters,@movie).deliver_now
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :movie_length, :director, :rating, :image,category_ids:[])
    end

    def is_admin?
     if current_user && current_user.try(:admin) == true
     else
       redirect_to root_path
       flash[:danger] = "Access Denied"
     end
    end
end
