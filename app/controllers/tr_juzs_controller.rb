class TrJuzsController < ApplicationController
  def index
       @tr_juzs = TrJuz.where(:nama => current_ms_user.name)
       @tr_juz = TrJuz.all
  end

  def show
    @tr_juz = TrJuz.find(params[:id])
  end

  def new
    @tr_juz = TrJuz.new
  end

  def create
    @tr_juz = TrJuz.new(tr_juzs_params)

    if @tr_juz.save
      redirect_to tr_juzs_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_juzs = TrJuz.find(params[:id])
  end

  def update
    tr_juzs = TrJuz.where(:id => params[:id])
    tr_juzs.update_all(:nama => current_ms_user.name)
    tr_juzs.update(tr_juzs_params)
    if tr_juzs
      redirect_to tr_juzs_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_juzs = TrJuz.all
  end
def activate
    @tr_juzs = TrJuz.find_by(:id=>params[:id])
    @tr_juzs.update(:status=>"Tersetujui")
    redirect_to tr_juzs_path, notice: "Data Accepted"
  end
  def destroy
    @tr_juzs = TrJuz.find(params[:id])
    @tr_juzs.destroy
    redirect_to tr_juzs_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_juzs_params
    params.require(:tr_juz).permit(:id, :tanggal, :status, :nama, :ayat, :kesimpulan)
  end
end
