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

  def edit
    @update_question = Question.find(params[:id])
  end

  def update
    @questions = Question.find(params[:id])
    @questions.title = params[:question][:title]
    @questions.body = params[:question][:body]
     if @questions.save
       flash[:notice] = "Question updated"
       redirect_to :questions

     else
       flash[:notice] = "Question not added"
      redirect_to :back
     end
  end


  def show
    @question = Question.find(params[:id])
    @title = Question.find_by(id: params[:id])
    # binding.pry
    # @answers = @question.answer(params[:id])

  end

  def create
    @questions = Question.new(questions_params)
    binding.pry
     if @questions.save
       flash[:notice] = "Question edited"
       redirect_to :back
     else
       flash[:notice] = "Question not edited"
      redirect_to :back
     end
  end

  def destroy
    @questions = Question.find(params[:id])
    @questions.destroy
     if @questions.save
       flash[:notice] = "Question destroyed"
       redirect_to :back
     else
       flash[:notice] = "Question intact"
      redirect_to :back
     end
  end

  private

def questions_params
  params.require(:question).permit(
    :title,
    :body
  )
end


end
