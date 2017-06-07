class OperatorsController < ApplicationController
  def index
    @operators = Operator.all
  end

  def new
    @operator = Operator.new
  end

  def create
    @operator = Operator.new(operator_params)

    if @operator.save
      redirect_to operators_url, notice: "Operador creado satisfactoriamente"
    else
      render :new, error: "Error: El operador no pudo crearse satisfactoriamente"
    end
  end

  def edit
    @operator = Operator.find(params[:id])
  end

  def update
    @operator = Operator.find(params[:id])

    if @operator.update(operator_params)
      redirect_to operators_url, notice: "Operador editado satisfactoriamente"

    else
      render :edit, error: "Error: El servicio no se pudo editar satisfactoriamente"
    end
  end

  private

  def operator_params
    params.require(:operator).permit(
    :name,
    :lastname)
  end

end
