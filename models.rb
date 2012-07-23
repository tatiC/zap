class Link < ActiveRecord::Base
  has_many :taggings
  has_many :tags, :through => :taggings
end

class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :links, :through => :taggings
end

class Tagging < ActiveRecord::Base
  belongs_to :link
  belongs_to :tag
end