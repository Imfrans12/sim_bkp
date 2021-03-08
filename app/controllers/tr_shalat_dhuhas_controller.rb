class TrShalatDhuhasController < ApplicationController
  def index
       @tr_shalat_dhuhas = TrShalatDhuha.all
    end

     def show
    @tr_shalat_dhuha = TrShalatDhuha.find(params[:id])
  end

  def new
    @tr_shalat_dhuha = TrShalatDhuha.new
  end

  def create
    @tr_shalat_dhuha = TrShalatDhuha.new(tr_shalat_dhuhas_params)

    if @tr_shalat_dhuha.save
      redirect_to tr_shalat_dhuhas_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_shalat_dhuhas = TrShalatDhuha.find(params[:id])
  end

  def update
    tr_shalat_dhuhas = TrShalatDhuha.where(:id => params[:id])
    tr_shalat_dhuhas.update_all(:nama => current_ms_user.name)
    tr_shalat_dhuhas.update(tr_shalat_dhuhas_params)
    if tr_shalat_dhuhas
      redirect_to tr_shalat_dhuhas_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_shalat_dhuhas = TrShalatDhuha.all
  end

  def destroy
    @tr_shalat_dhuhas = TrShalatDhuha.find(params[:id])
    @tr_shalat_dhuhas.destroy
    redirect_to tr_shalat_dhuhas_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_shalat_dhuhas_params
    params.require(:tr_shalat_dhuha).permit(:id, :tanggal, :status, :nama)
  end
end
