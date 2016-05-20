class AddMovieIdToVideos < ActiveRecord::Migration
  def change
  	    add_column :videos, :movie_id, :integer

  end
end
