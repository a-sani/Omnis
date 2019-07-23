class Coursev2sController < ApplicationController
  before_action :set_coursev2, only: [:show, :edit, :update, :destroy]

  # GET /coursev2s
  # GET /coursev2s.json
  def index
    @coursev2s = Coursev2.all
  end

  # GET /coursev2s/1
  # GET /coursev2s/1.json
  def show
  end

  # GET /coursev2s/new
  def new
    @coursev2 = Coursev2.new
  end

  # GET /coursev2s/1/edit
  def edit
  end

  # POST /coursev2s
  # POST /coursev2s.json
  def create
    @coursev2 = Coursev2.new(coursev2_params)

    respond_to do |format|
      if @coursev2.save
        format.html { redirect_to @coursev2, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @coursev2 }
      else
        format.html { render :new }
        format.json { render json: @coursev2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursev2s/1
  # PATCH/PUT /coursev2s/1.json
  def update
    respond_to do |format|
      if @coursev2.update(coursev2_params)
        format.html { redirect_to @coursev2, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursev2 }
      else
        format.html { render :edit }
        format.json { render json: @coursev2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursev2s/1
  # DELETE /coursev2s/1.json
  def destroy
    @coursev2.destroy
    respond_to do |format|
      format.html { redirect_to coursev2s_url, notice: 'Course was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursev2
      @coursev2 = Coursev2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursev2_params
      params.require(:coursev2).permit(:name, :website1, :website2, :website3, :duedate, :notes)
    end
end
