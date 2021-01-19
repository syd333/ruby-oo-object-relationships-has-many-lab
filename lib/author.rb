class Author 

attr_accessor :name

@@count = 0

def initialize(name)
    @name = name
    @posts = []
end

def posts
    Post.all.select do |post|
        post.author == self 
    end
end

def add_post(post)
    @@count += 1
    @posts << post
    post.author = self
end

def add_post_by_title(title)
    @@count += 1
    p = Post.new(title)
    self.add_post(p)
end

def self.post_count
    @@count
end


end