class InscriptionsController < ApplicationController
  before_action :set_inscription, only: [:show, :edit, :update, :destroy]
  before_action :set_option_for_select, only: [:new, :edit, :create, :update]

  # GET /inscriptions
  # GET /inscriptions.json
  def index
    @inscriptions = Inscription.all.page(params[:page])
    @phones = Phone.all
  end

  # GET /inscriptions/1
  # GET /inscriptions/1.json
  def show
  end

  # GET /inscriptions/new
  def new
    @inscription = Inscription.new
    @inscription.build_address
  end

  # GET /inscriptions/1/edit
  def edit
  end

  # POST /inscriptions
  # POST /inscriptions.json
  def create
    @inscription = Inscription.new(inscription_params)

    respond_to do |format|
      if @inscription.save
        format.html { redirect_to @inscription, notice: 'Inscription was successfully created.' }
        format.json { render :show, status: :created, location: @inscription }
      else
        format.html { render :new }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscriptions/1
  # PATCH/PUT /inscriptions/1.json
  def update
    respond_to do |format|
      if @inscription.update(inscription_params)
        format.html { redirect_to @inscription, notice: 'Inscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @inscription }
      else
        format.html { render :edit }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscriptions/1
  # DELETE /inscriptions/1.json
  def destroy
    @inscription.destroy
    respond_to do |format|
      format.html { redirect_to inscriptions_url, notice: 'Inscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_option_for_select
    @teams_options = Team.all
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_inscription
      @inscription = Inscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscription_params
      params.require(:inscription).permit(:full_name, :birthday, :mother, :father, :sex, :shirt_size, :baptism, :first_eucharist, :chrism, :follow_me, :revive, :other_meeting, :pastoral, :health_problem, :hp_describe, :medication, :medication_time, :rmk, :avatar,
        address_attributes: [:street, :district, :city, :state, :zip_code],
        emails_attributes: [:id, :email, :_destroy],
        phones_attributes: [:id, :phone, :whatsapp, :_destroy],
        )
    end
  end

