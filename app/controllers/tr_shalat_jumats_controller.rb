class TrShalatJumatsController < ApplicationController
  def index
       @tr_shalat_jumats = TrShalatJumat.where(:nama => current_ms_user.name)
    end

     def show
    @tr_shalat_jumat = TrShalatJumat.find(params[:id])
  end

  def new
    @tr_shalat_jumat = TrShalatJumat.new
  end

  def create
    @tr_shalat_jumat = TrShalatJumat.new(tr_shalat_jumats_params)

    if @tr_shalat_jumat.save
      redirect_to tr_shalat_jumats_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_shalat_jumats = TrShalatJumat.find(params[:id])
  end

  def update
    tr_shalat_jumats = TrShalatJumat.where(:id => params[:id])
    tr_shalat_jumats.update_all(:nama => current_ms_user.name)
    tr_shalat_jumats.update(tr_shalat_jumats_params)
    if tr_shalat_jumats
      redirect_to tr_shalat_jumats_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_shalat_jumats = TrShalatJumat.all
  end

  def destroy
    @tr_shalat_jumats = TrShalatJumat.find(params[:id])
    @tr_shalat_jumats.destroy
    redirect_to tr_shalat_jumats_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_shalat_jumats_params
    params.require(:tr_shalat_jumat).permit(:id, :tanggal, :status, :nama)
  end
end
