class TrPhbsController < ApplicationController
  def index
       @tr_phbs = TrPhb.where(:nama => current_ms_user.name)
       @tr_phb = TrPhb.all
    end

     def show
    @tr_phb = TrPhb.find(params[:id])
  end

  def new
    @tr_phb = TrPhb.new
  end

  def create
    @tr_phb = TrPhb.new(tr_phbs_params)

    if @tr_phb.save
      redirect_to tr_phbs_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_phbs = TrPhb.find(params[:id])
  end

  def update
    tr_phbs = TrPhb.where(:id => params[:id])
    tr_phbs.update_all(:nama => current_ms_user.name)
    tr_phbs.update(tr_phbs_params)
    if tr_phbs
      redirect_to tr_phbs_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def activate
    @tr_phbs = TrPhb.find_by(:id=>params[:id])
    @tr_phbs.update(:status=>"Tersetujui")
    redirect_to tr_phbs_path, notice: "Data Accepted"
  end
  def report
    @tr_phbs = TrPhb.all
  end

  def destroy
    @tr_phbs = TrPhb.find(params[:id])
    @tr_phbs.destroy
    redirect_to tr_phbs_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_phbs_params
    params.require(:tr_phb).permit(:id, :tanggal_olahraga, :aktifitas, :durasi, :tanggal_makan, :karbohidrat, :protein, :sayur, :buah, :status, :nama)
  end
end
