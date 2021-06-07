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

   respond_to do |format|
     if @task.save
       format.html { redirect_to @task, notice: "Task was successfully created." }
       format.json { render :show, status: :created, location: @task }
     else
       format.html { render :new, status: :unprocessable_entity }
       format.json { render json: @task.errors, status: :unprocessable_entity }
     end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "Task updated succefully" }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
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
