class TasksController < ApplicationController
  def index
    @tasks = Task.all
    if @tasks
      render json: {
        tasks: @tasks
      }
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
  end

  def show
    @task = Task.find(params[:id])
   if @task
      render json: {
        task: @task
      }
    else
      render json: {
        status: 500,
        errors: ['task not found']
      }
    end
  end


  def edit
    @task = Task.find(params[:id])
   if @task
      render json: {
        task: @task
      }
    else
      render json: {
        status: 500,
        errors: ['task not found']
      }
    end
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: {
        status: :created,
        user: @task
      }
    else
      render json: {
        status: 500,
        errors: @task.errors.full_messages
      }
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      render json: {
        status: :updated,
        user: @task
      }
    else
      render json: {
        status: 500,
        errors: @task.errors.full_messages
      }
    end
  end


  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :due_date, :status, :notes, :task_url)
  end
end
