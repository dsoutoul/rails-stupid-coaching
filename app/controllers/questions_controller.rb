class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ok = params[:question]
    @answer = coach_answer(@ok)
  end

  private

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      "Awesome!"
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
