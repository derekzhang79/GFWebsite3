class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      #Options on where to display photo
      t.boolean :photo_on_top   #Display the photo on the top of the body
      t.boolean :photo_gallery  #When clicking on picture, load it in lightbox JS

      #Paperclip
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size

      t.timestamps
    end
  end
end
