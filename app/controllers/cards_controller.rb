class CardsController < ApplicationController

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

  def show
    @card = Card.find(params[:id])
    @task_list = TaskList.find(params[:task_list_id])
  end

  def edit
    @task_list = TaskList.find(params[:task_list_id])
    @card = Card.find(params[:id])
  end

  def update
    @task_list = TaskList.find(params[:task_list_id])
    @card = Card.find(params[:id])
    if @card.update(card_params)
      redirect_to task_list_card_path(@task_list,@card)
    else
      render :edit
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:content, :memo, :image, :task_list_id)
  end

end
