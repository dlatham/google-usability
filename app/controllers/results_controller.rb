class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index
    @results = Result.all
  end

  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create
    @test = Test.find(params[:test_id])
    @result = @test.results.create(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to test_path(@test), notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      # byebug
      format.html { redirect_to "/tests/#{params[:test_id]}", notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #AJAX route when sortable is updated
  def sort
    params[:order].each do |key,value|
      #byebug
      Result.find(value[:id]).update_attribute(:sort,value[:position])
    end
    #render :nothing => true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:title, :description, :linkShow, :link, :ad, :test_id)
    end
end
