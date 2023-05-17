class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    Idea.create(idea_params)

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          :idea_index,
          partial: 'layouts/idea_index',
          locals: { ideas: Idea.all }
        )
      end
      format.html do 
        redirect_to root_path 
      end
    end
  end

  def idea_params
    params.require(:idea).permit(:title, :description)
  end
end
