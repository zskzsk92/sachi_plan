class TaskListsController < ApplicationController
  def index
    @task_lists = TaskList.all
  end

  def new
  end

  def create
  end
  
end
