class AnswersController < ApplicationController
    def show
    end
    
    def create
        # question = Question.find( params[:answer][:question_id])
        # question.answers.create(answer_params)
        # redirect_to question
        Answer.create(answer_params)
        redirect_to root_path
    end

    private

    def answer_params
        params.require(:answer).permit(:question_id, :email, :body)
    end

end
