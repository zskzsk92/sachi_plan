class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
    @task_list = TaskList.find(params[:task_list_id])
  end

  def create
    @task_list = TaskList.find(params[:task_list_id])
    @card = @task_list.cards.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def card_params
    params.require(:card).permit(:content, :memo, :image, :task_list_id)
  end

end
