class JobtrackersController < ApplicationController
  def index
    @jobtrackers = Jobtracker.all
    if @jobtrackers
      render json: {
        jobtracker: @jobtrackers
      }
    else
      render json: {
        status: 500,
        errors: ['no jobtrackers found']
      }
    end
  end
  def getjobs
    @jobtrackers = Jobtracker.all.where(user_id: params[:user_id])
    if @jobtrackers
      render json: {
        jobtracker: @jobtrackers
      }
    else
      render json: {
        status: 500,
        errors: ['no jobtrackers found']
      }
    end
  end

  def show
    @jobtracker = Jobtracker.find(params[:id])
   if @jobtracker
      render json: {
        jobtracker: @jobtracker
      }
    else
      render json: {
        status: 500,
        errors: ['jobtracker not found']
      }
    end
  end


  def edit
    @jobtracker = Jobtracker.find(params[:id])
   if @user
      render json: {
        jobtracker: @jobtracker
      }
    else
      render json: {
        status: 500,
        errors: ['jobtracker not found']
      }
    end
  end

  def create
    @jobtracker = Jobtracker.new(jobtracker_params)
    if @jobtracker.save
      render json: {
        status: :created,
        user: @jobtracker
      }
    else
      render json: {
        status: 500,
        errors: @jobtracker.errors.full_messages
      }
    end
  end

  def update
    @jobtracker = Jobtracker.find(params[:id])
    puts "Jobtracker user id"
    puts @jobtracker.user_id

    puts "Jobtracker_params"
    puts jobtracker_params
    if @jobtracker.update(jobtracker_params)
      render json: {
        status: :updated,
        jobtracker: @jobtracker
      }
    else
      render json: {
        status: 500,
        errors: @jobtracker.errors.full_messages
      }
    end
  end


  private
  def set_jobtracker
    @jobtracker = Jobtracker.find(params[:id])
  end

  def jobtracker_params
    params.require(:jobtracker).permit(:company_name, :jd, :date_applied, :job_title, :status, :job_notes, :collateral,:user_id)
  end

end
