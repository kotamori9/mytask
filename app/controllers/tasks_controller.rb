class TasksController < ApplicationController

  def index
    @task = Task.new
  end

  def create
    @task = Task.create
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end

end
