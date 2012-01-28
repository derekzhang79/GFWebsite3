xml.instruct!

xml.posts do
    Post.all.each do |p|
        xml.post do 
            xml.title p.title
            xml.body p.body
            xml.published_at p.created_at
        end
    end
end
