class QuestionsController < ApplicationController
  def new
  end
  def index
    @questions = []
    lists = 0
    while lists < Question.count
    @questions << [Question.all[lists].id, Question.all[lists].title, Question.all[lists].created_at, Question.all[lists].updated_at, Question.all[lists].body]
    lists+=1

    end
    @questions.sort_by! {|title, time| time}
  end
end
