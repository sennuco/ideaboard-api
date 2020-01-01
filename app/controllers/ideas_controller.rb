class IdeasController < ApplicationController
    def index
     @ideas = Idea.order("created_at DESC")
     render json: @ideas
    end

    def show
        idea = Idea.find(params[:id])
        render json: idea
    end

    def create
      @idea = Idea.create(idea_params)
      render json: @idea
    end

   

    def update
      @idea = Idea.find(params[:id])
      @idea.update_attributes(idea_params)
      render json: @idea
    end

    def destroy
      @idea = Idea.find(params[:id])
      if @idea.destroy
        head :no_content, status: :ok
      else
        render json: @idea.errors, status: :unprocessable_entity
      end
    end
    
    private

    def idea_params
     params.require(:idea).permit(:title, :body, :category_id, :user_id)
    end


end
