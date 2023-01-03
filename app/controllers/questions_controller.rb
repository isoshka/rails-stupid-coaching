class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:questions]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.end_with?("?")
                'Silly question, get dressed and go to work!'
              else 'I dont care, get dressed and go to work!'
              end
  end
end
