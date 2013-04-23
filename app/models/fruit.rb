class Fruit < ActiveRecord::Base
  attr_accessible :title, :tag_list
  acts_as_ordered_taggable

  #
  # Uncomment the after_save block below to test
  # >> p self.tag_list_change
  #   ["ripe, over-ripe", ["ripe", "over-ripe"]]
  # >> (rdb:80) p self.tag_list_change.first.class
  #   String
  # >> (rdb:80) p self.tag_list_change.last.class
  #   ActsAsTaggableOn::TagList

  #after_save do
  #  debugger
  #end

end
