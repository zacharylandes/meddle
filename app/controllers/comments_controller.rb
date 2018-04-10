class CommentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new
        @dater = Dater.find(params[:dater_id])
        @comment = @dater.comments.new  
        @backer = User.find(params[:backer_id])
        @question1 = Question.find(1)
        @question2 = Question.find(2)
        @question3 = Question.find(3)
        @question4 = Question.find(4)
        @question5 = Question.find(5) 
    end

    def create

       comment =  CommentService.new.create_comment(params)
    #    redirect_to new_backer_dater_comment_path(params[:backer_id],params[:dater_id])
  
    end 

    def update 
    end

    def destroy
    end
  end
  