class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params["question_id"])
  end

  def index
    @answers = Answer.all
  end

  def show
    @answers = Answer.find(params[:id])

  end

  def create
    @answers = Answer.new(answers_params)
    @answers.question_id = params["question_id"]

    Answer.where(question_id: params["question_id"])
     if @answers.save
       flash[:notice] = "Answer created"
       redirect_to :back
     else
       flash[:notice] = "Answer not added"
      redirect_to :back
     end
  end

  def destroy
  end

  private

def answers_params
  params.require(:answer).permit(
    :title,
    :answer
  )
end
end
