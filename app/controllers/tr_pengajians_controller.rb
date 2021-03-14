class TrPengajiansController < ApplicationController
  def index
       @tr_pengajians = TrPengajian.where(:nama => current_ms_user.name)
       @tr_pengajian = TrPengajian.all
  end

  def show
    @tr_pengajian = TrPengajian.find(params[:id])
  end

  def new
    @tr_pengajian = TrPengajian.new
  end

  def create
    @tr_pengajian = TrPengajian.new(tr_pengajians_params)

    if @tr_pengajian.save
      redirect_to tr_pengajians_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_pengajians = TrPengajian.find(params[:id])
  end

  def update
    tr_pengajians = TrPengajian.where(:id => params[:id])
    tr_pengajians.update_all(:nama => current_ms_user.name)
    tr_pengajians.update(tr_pengajians_params)
    if tr_pengajians
      redirect_to tr_pengajians_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_pengajians = TrPengajian.all
  end
def activate
    @tr_pengajians = TrPengajian.find_by(:id=>params[:id])
    @tr_pengajians.update(:status=>"Tersetujui")
    redirect_to tr_pengajians_path, notice: "Data Accepted"
  end
  def destroy
    @tr_pengajians = TrPengajian.find(params[:id])
    @tr_pengajians.destroy
    redirect_to tr_pengajians_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_pengajians_params
    params.require(:tr_pengajian).permit(:id, :tanggal, :status, :nama, :judul, :kesimpulan)
  end
end
