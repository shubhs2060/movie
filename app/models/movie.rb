class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_attached_file :image, styles: { medium: "400x600#"}, :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
 validates_presence_of :title, :description, :image, :rating, :movie_length, :director

end
