class Post < ActiveRecord::Base
  validates_presence_of :title, :body, :photo_file_name
  validates_uniqueness_of :title

  Photo_on_top_options = {"Photo ontop of body" => true, "Photo below body" => false}
  Photo_gallery_options = {"Show photo in gallery" => true, "Open photo with browser" => false }

  #Paperclip
  has_attached_file :photo,
    :styles => {
      :med => "500x500>" }      
end
