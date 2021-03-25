class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent_posts
        posts.last(5)
    end

    def featured_posts
        posts.max_by{|post|post.likes}
    end

    def avg_blogger_age
        total = bloggers.uniq.sum{|b| b.age}
        total.to_f/bloggers.uniq.size
    end
end
