class Song < ActiveRecord::Base

  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist

  include Slug::InstanceMethods
  #extend Slug::ClassMethods

  def self.find_by_slug(slug)
    Song.all.find{|i| i.slug == slug}
  end

end
