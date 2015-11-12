class AnswersController < ApplicationController
 before_action :set_answer, only: [:edit, :update, :destroy]
  def index
    @answers = Answer.all
    @answer = Answer.new
  end
  
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answers_path , notice: 'メッセージを保存しました'
    else
      @answers = Answer.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end
  
  def edit
  end
  
  def update
    if @answer.update(answer_params)
      redirect_to answers_path , notice: 'メッセージを編集しました'
    else
      render 'edit'
    end
  end
  
   def destroy
    @answer.destroy
    redirect_to answers_path, notice: 'メッセージを削除しました'
   end
  
    
  def show
    @answer = Answer.find(params[:id])
  end
  

  private
  def answer_params
    params.require(:answer).permit(:name, :age, :body)
  end
  
  def set_answer
    @answer = Answer.find(params[:id])
  end

  
end