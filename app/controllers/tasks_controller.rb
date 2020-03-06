class TasksController < ApplicationController

  def index
    @tasks =Task.all
    @task =Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to root_path(@task), notice: 'ToDoが作成されました'
    else
      redirect_to root_path(@task), alert: 'ToDoを入力してください。'
    end
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end

end
