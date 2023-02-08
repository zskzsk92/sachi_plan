class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.where(user:current_user).order("created_at ASC").page(params[:page])
  end

  def new
    @task_list = TaskList.new
  end

  def create
    @task_list = TaskList.new(task_list_params)
    if @task_list.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task_list = TaskList.find(params[:id])
  end

  def update
    @task_list = TaskList.find(params[:id])
    if @task_list.update(task_list_params)
    redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    task_list = TaskList.find(params[:id])
    task_list.destroy
    redirect_to root_path
  end

  private

  def task_list_params
    params.require(:task_list).permit(:title).merge(user_id: current_user.id)
  end

end
