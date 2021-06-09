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

  def getStudents
    @users = User.all.where(cohort_id: params[:cohort_id])
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['no students found']
      }
    end
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      render json: {
        status: :created,
        user: @cohort
      }
    else
      render json: {
        status: 500,
        errors: @cohort.errors.full_messages
      }
    end
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(jobtracker_params)
      render json: {
        status: :updated,
        user: @cohort
      }
    else
      render json: {
        status: 500,
        errors: @cohort.errors.full_messages
      }
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
