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
    @task = Task.new(
      title: params['task']['title'],
      details: params['task']['details']
    )
    @task.save
    redirect_to home_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to home_path
  end

  def home
    @tasks = Task.all
  end

  def update
    @task = Task.find(params[:id])
    @task.update(completed: true)
    redirect_to home_path
  end
end
