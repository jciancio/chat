class TasksController < ApplicationController
  before_action :set_task, only: [:show, :destroy]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    current_user.tasks << @task
    redirect_to "/user/#{current_user.username}"
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to "/user/#{current_user.username}"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :points, :user)
  end
end
