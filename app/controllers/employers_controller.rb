class EmployersController < ApplicationController

  before_action :set_employer, only: [:show, :edit, :update, :destroy, :confirm_delete]

  def index
    @employers = Employer.all
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(employer_params)
    if @employer.save
      redirect_to @employer, notice: 'Employer was successfully created.'
    else
      render :new
    end
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    employer = Employer.find(params[:id])
    employer.update(employer_params)
    redirect_to employers_path
  end

  def confirm_delete
    # Renders a custom confirmation page before deletion
  end

  def destroy
    @employer.destroy
    redirect_to employers_path, notice: 'Employer was successfully deleted.'
  end

  private

  def set_employer
    @employer = Employer.find(params[:id])
  end

  def employer_params
    params.require(:employer).permit(:name, :position, :salary)
  end

end
