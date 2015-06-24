class QuestionsController < ApplicationController
  def new
@entry = Question.new
  end
  def index
    @entry = Question.new
    @questions = []
    lists = 0
    while lists < Question.count
    @questions << [Question.all[lists].id, Question.all[lists].title, Question.all[lists].created_at, Question.all[lists].updated_at, Question.all[lists].body]
    lists+=1

    end
    @questions.sort_by! {|test, title, time| time}
  end

  def show
    @question = Question.find(params[:id])
    @title = Question.find_by(id: params[:id])
    # binding.pry
    # @answers = @question.answer(params[:id])

  end

  def create
    @questions = Question.new(questions_params)
     if @questions.save
       flash[:notice] = "Question created"
       redirect_to :back
     else
       flash[:notice] = "Question not added"
      redirect_to :back
     end
  end

  def destroy
    @questions = Question.new(questions_params)
  end

  private

def questions_params
  params.require(:question).permit(
    :title,
    :body
  )
end


end
