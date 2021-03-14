class TrKeagamaansController < ApplicationController
  def index
       @tr_keagamaans = TrKeagamaan.where(:nama => current_ms_user.name)
       @tr_keagamaan = TrKeagamaan.all
    end

     def show
    @tr_keagamaan = TrKeagamaan.find(params[:id])
  end

  def new
    @tr_keagamaan = TrKeagamaan.new
  end

  def create
    @tr_keagamaan = TrKeagamaan.new(tr_keagamaans_params)

    if @tr_keagamaan.save
      redirect_to tr_keagamaans_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_keagamaans = TrKeagamaan.find(params[:id])
  end

  def update
    tr_keagamaans = TrKeagamaan.where(:id => params[:id])
    tr_keagamaans.update_all(:nama => current_ms_user.name)
    tr_keagamaans.update(tr_keagamaans_params)
    if tr_keagamaans
      redirect_to tr_keagamaans_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_keagamaans = TrKeagamaan.all
  end
def activate
    @tr_keagamaans = TrKeagamaan.find_by(:id=>params[:id])
    @tr_keagamaans.update(:status=>"Tersetujui")
    redirect_to tr_keagamaans_path, notice: "Data Accepted"
  end
  def destroy
    @tr_keagamaans = TrKeagamaan.find(params[:id])
    @tr_keagamaans.destroy
    redirect_to tr_keagamaans_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_keagamaans_params
    params.require(:tr_keagamaan).permit(:id, :tanggal, :judul, :kesimpulan, :nama, :status)
  end
end
