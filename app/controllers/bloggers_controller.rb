class BloggersController < ApplicationController
        def index
            @bloggers = Blogger.all
        end 

        def show
            @blogger = Blogger.find(params[:id])
            @post = @blogger.most_liked
            @destination = Destination.find(params[:id])
        end
        
        def new
            @blogger = Blogger.new
        end

        def create
            @blogger = Blogger.create(blogger_params)
            if @blogger.valid?
                redirect_to @blogger
            else
                render :new
            end
        end

        private
        def blogger_params
            params.require(:blogger).permit(:name, :bio, :age)
        end

end
