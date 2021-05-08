class ReservableByStaffsController < ApplicationController
  before_action :set_reservable_by_staff, only: %i[ show edit update destroy ]

  # GET /reservable_by_staffs or /reservable_by_staffs.json
  def index
    @reservable_by_staffs = ReservableByStaff.all
  end

  # GET /reservable_by_staffs/1 or /reservable_by_staffs/1.json
  def show
  end

  # GET /reservable_by_staffs/new
  def new
    @reservable_by_staff = ReservableByStaff.new
  end

  # GET /reservable_by_staffs/1/edit
  def edit
  end

  # POST /reservable_by_staffs or /reservable_by_staffs.json
  def create
    @reservable_by_staff = ReservableByStaff.new(reservable_by_staff_params)

    respond_to do |format|
      if @reservable_by_staff.save
        format.html { redirect_to @reservable_by_staff, notice: "Reservable by staff was successfully created." }
        format.json { render :show, status: :created, location: @reservable_by_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservable_by_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservable_by_staffs/1 or /reservable_by_staffs/1.json
  def update
    respond_to do |format|
      if @reservable_by_staff.update(reservable_by_staff_params)
        format.html { redirect_to @reservable_by_staff, notice: "Reservable by staff was successfully updated." }
        format.json { render :show, status: :ok, location: @reservable_by_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservable_by_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservable_by_staffs/1 or /reservable_by_staffs/1.json
  def destroy
    @reservable_by_staff.destroy
    respond_to do |format|
      format.html { redirect_to reservable_by_staffs_url, notice: "Reservable by staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservable_by_staff
      @reservable_by_staff = ReservableByStaff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservable_by_staff_params
      params.require(:reservable_by_staff).permit(:the_date, :start_time, :end_time, :staff_id, :filled_flag)
    end
end
