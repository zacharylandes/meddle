class ConversationsController < ApplicationController

    def index
      @conversations = current_user.mailbox.conversations.paginate(:page => params[:page], :per_page => 10)
    end
  
    def new
      @recipient = User.find(params[:recipient])
    end
  
    def create
      recipient = User.find(params[:format])
      receipt = current_user.send_message(recipient, params[:body], params[:subject])
      flash[:notice] = "Message Sent"
      redirect_to conversation_path(receipt.conversation)
    end
  
    def show
      @conversation = current_user.mailbox.conversations.find(params[:id])
        receiver = current_user.mailbox.conversations.find(params[:id]).receipts.where.not(receiver_id: current_user.id).first.receiver_id 
      @conversations = current_user.mailbox.receipts.select  do |receipt|
          receipt.conversation.receipts.find_by(receiver_id: receiver)
        end
    end
    
  
  end
  