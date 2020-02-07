class QuestionsController < ApplicationController
  
  def new
  end

  def index
  	@question = Question.all.sample(4)
  end

  def jugde
  	 id = params[:question_id]
  end

  def maintenance
  end
 
end
