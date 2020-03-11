class QuestionsController < ApplicationController
  
  def new
  end

  def index
    @question = Question.all.sample(4)
    @answer = @question.sample
    @@answer = @answer
  end

  def judge
    @answer = @@answer
    @select = Question.find(params["question_id"])
    if @answer == @select
      @result = "正解"
    else
      @result = "不正解"      
    end
  end

  def maintenance
  end
 
end
