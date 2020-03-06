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
      flash.now[:alert] = 'ToDoを入力してください。'
      render :index
    end
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end

end
