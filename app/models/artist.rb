class Artist < ActiveRecord::Base

  #include Slug::ClassMethods
  include Slug::InstanceMethods

  has_many :songs
  has_many :genres, through: :songs

  def self.find_by_slug(slug)
    Artist.all.find{|i| i.slug == slug}
  end


end
