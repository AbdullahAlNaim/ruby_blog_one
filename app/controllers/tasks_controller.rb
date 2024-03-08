class TasksController < ApplicationController
  def index
    @tasks = TodoItem.all
  end

  def show
    @tasks = TodoItem.find(params[:id])
  end

  def new
    @task = TodoItem.new
  end

  def create
    @task = TodoItem.new(task_params)

    if @task.save
      redirect_to 
    else
      render :new
    end
  end

  private
    def task_params
      params.require(:todo_item).permit(:title, :body)
    end
end
