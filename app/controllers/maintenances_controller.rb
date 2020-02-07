class MaintenancesController < ApplicationController
  def new
  	@question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to '/questions/maintenance'
    else
      render 'no'
    end
  end

  def search
  end

  def edit
  end

  def delete
  end

  private

    def question_params
      params.require(:question).permit(:question, :description)
    end

end
