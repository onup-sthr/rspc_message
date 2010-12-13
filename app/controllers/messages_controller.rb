class MessagesController < ApplicationController
  def create
    @message=Message.new(params[:message])
    if @message.save
      flash[:notice]="The message was saved successfully."
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
end
