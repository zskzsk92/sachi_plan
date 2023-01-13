class TaskListsController < ApplicationController
  def index
    @task_lists = TaskList.all
  end

  def new
    @task_list = TaskList.new
  end

  def create
    @task_list = TaskList.new(task_list_params)
    if @task_list.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def task_list_params
    params.require(:task_list).permit(:title).merge(user_id: current_user.id)
  end

end
