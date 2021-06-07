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

   respond_to do |format|
     if @jobtracker.save
       format.html { redirect_to @jobtracker, notice: "Jobtracker was successfully created." }
       format.json { render :show, status: :created, location: @jobtracker }
     else
       format.html { render :new, status: :unprocessable_entity }
       format.json { render json: @jobtracker.errors, status: :unprocessable_entity }
     end
    end
  end

  def update
    respond_to do |format|
      if @jobtracker.update(jobtracker_params)
        format.html { redirect_to @jobtracker, notice: "Jobtracker created succefully" }
        format.json { render :show, status: :ok, location: @jobtracker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobtracker.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def set_jobtracker
    @jobtracker = Jobtracker.find(params[:id])
  end

  def jobtracker_params
    params.require(:jobtracker).permit(:company_name, :jd, :date_applied, :job_title, :status, :job_notes, :collateral)
  end

end
