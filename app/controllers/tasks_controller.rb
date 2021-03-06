class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(safe_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task = Task.update(safe_params)
  end

  private

  def safe_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
