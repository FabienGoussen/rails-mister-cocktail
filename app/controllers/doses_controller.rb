class DosesController < ApplicationController
before_action :find_dose, only: [ :new, :create ]

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
  def find_dose
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
