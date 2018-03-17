module Slug

  module InstanceMethods
    def slug
     name.downcase.gsub(" ","-")
   end
 end

#=begin
 module ClassMethods
   def self.find_by_slug(slug)
     Self.all.find{|i| i.slug == slug}
   end
 end
#=end

end
