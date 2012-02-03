class Post < ActiveRecord::Base
  validates_presence_of :title, :body, :photo_file_name
  validates_uniqueness_of :title

  #Paperclip
  has_attached_file :photo,
    :styles => {
      :med => "500x500>" }      
end
