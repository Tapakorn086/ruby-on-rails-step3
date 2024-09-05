class RegistersController < ApplicationController
  def index
    @register = Register.all
  end

  def new
    @register = Register.new
  end

  def create
    @register = Register.new(register_params)
    if @register.save
      redirect_to root_path, notice: "Register was successfully created."
    else
      render :new
    end
  end

  def register_params
    params.require(:register).permit(:firstName, :lastName, :birthDate, :gender, :email, :phone, :selectSubject)
  end
end
