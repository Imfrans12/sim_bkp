class TrCeramahsController < ApplicationController
  def index
       @tr_ceramahs = TrCeramah.where(:nama => current_ms_user.name)
       @tr_ceramah = TrCeramah.all
  end

  def show
    @tr_ceramah = TrCeramah.find(params[:id])
  end

  def new
    @tr_ceramah = TrCeramah.new
  end

  def create
    @tr_ceramah = TrCeramah.new(tr_ceramahs_params)

    if @tr_ceramah.save
      redirect_to tr_ceramahs_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_ceramahs = TrCeramah.find(params[:id])
  end

  def update
    tr_ceramahs = TrCeramah.where(:id => params[:id])
    tr_ceramahs.update_all(:nama => current_ms_user.name)
    tr_ceramahs.update(tr_ceramahs_params)
    if tr_ceramahs
      redirect_to tr_ceramahs_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_ceramahs = TrCeramah.all
  end
def activate
    @tr_ceramahs = TrCeramah.find_by(:id=>params[:id])
    @tr_ceramahs.update(:status=>"Tersetujui")
    redirect_to tr_ceramahs_path, notice: "Data Accepted"
  end
  def destroy
    @tr_ceramahs = TrCeramah.find(params[:id])
    @tr_ceramahs.destroy
    redirect_to tr_ceramahs_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_ceramahs_params
    params.require(:tr_ceramah).permit(:id, :tanggal, :status, :nama, :tempat, :judul, :pemateri, :kesimpulan)
  end
end
