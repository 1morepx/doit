class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    if task = Task.create(task_params)
      redirect_to :index
    else
      redirect_to :new, task
    end
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end
end
