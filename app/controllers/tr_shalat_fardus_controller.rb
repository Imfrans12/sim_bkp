class TrShalatFardusController < ApplicationController
  def index
       @tr_shalat_fardus = TrShalatFardu.where(:nama => current_ms_user.name)
    end

     def show
    @tr_shalat_fardu = TrShalatFardu.find(params[:id])
  end

  def new
    @tr_shalat_fardu = TrShalatFardu.new
  end

  def create
    @tr_shalat_fardu = TrShalatFardu.new(tr_shalat_fardus_params)

    if @tr_shalat_fardu.save
      redirect_to tr_shalat_fardus_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_shalat_fardus = TrShalatFardu.find(params[:id])
  end

  def update
    tr_shalat_fardus = TrShalatFardu.where(:id => params[:id])
    tr_shalat_fardus.update_all(:nama => current_ms_user.name)
    tr_shalat_fardus.update(tr_shalat_fardus_params)
    if tr_shalat_fardus
      redirect_to tr_shalat_fardus_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_shalat_fardus = TrShalatFardu.all
  end

  def destroy
    @tr_shalat_fardus = TrShalatFardu.find(params[:id])
    @tr_shalat_fardus.destroy
    redirect_to tr_shalat_fardus_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_shalat_fardus_params
    params.require(:tr_shalat_fardu).permit(:id, :tanggal, :status, :nama)
  end
end
