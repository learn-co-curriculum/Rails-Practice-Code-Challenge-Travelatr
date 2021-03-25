class DestinationsController < ApplicationController
    def show
        @destination = Destination.find(params[:id])
        @posts = @destination.most_recent_posts
        @featured_post = @destination.featured_posts
        @avg_age = @destination.avg_blogger_age
    end
end
