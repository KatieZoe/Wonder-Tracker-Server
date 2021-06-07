class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
    if @cohorts
      render json: {
        cohort: @cohorts
      }
    else
      render json: {
        status: 500,
        errors: ['no cohorts found']
      }
    end
  end

  def show
    @cohort = Cohort.find(params[:id])
   if @cohort
      render json: {
        cohort: @cohort
      }
    else
      render json: {
        status: 500,
        errors: ['cohort not found']
      }
    end
  end


  def edit
    @cohort = Cohort.find(params[:id])
   if @user
      render json: {
        cohort: @cohort
      }
    else
      render json: {
        status: 500,
        errors: ['cohort not found']
      }
    end
  end

  def create
   @cohort = Cohort.new(cohort_params)

   respond_to do |format|
     if @cohort.save
       format.html { redirect_to @cohort, notice: "Cohort was successfully created." }
       format.json { render :show, status: :created, location: @cohort }
     else
       format.html { render :new, status: :unprocessable_entity }
       format.json { render json: @cohort.errors, status: :unprocessable_entity }
     end
    end
  end

  def update
    respond_to do |format|
      if @cohort.update(cohort_params)
        format.html { redirect_to @cohort, notice: "Cohort created succefully" }
        format.json { render :show, status: :ok, location: @cohort }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:course, :cohort_number, :load)
  end
end
