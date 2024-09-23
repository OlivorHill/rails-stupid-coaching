class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @userQuestion = params[:question]
    @answer = "New answer"

    if @userQuestion.downcase == "i am going to work"
      @answer = "Great!"
    elsif @userQuestion.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
