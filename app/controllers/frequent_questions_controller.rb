class FrequentQuestionsController < ApplicationController
  before_action :set_frequent_question, only: [:show, :edit, :update, :destroy]

  # GET /frequent_questions
  # GET /frequent_questions.json
  def index
    @frequent_questions = FrequentQuestion.all
  end

  # GET /frequent_questions/1
  # GET /frequent_questions/1.json
  def show
  end

  # GET /frequent_questions/new
  def new
    @frequent_question = FrequentQuestion.new
  end

  # GET /frequent_questions/1/edit
  def edit
  end

  # POST /frequent_questions
  # POST /frequent_questions.json
  def create
    @frequent_question = FrequentQuestion.new(frequent_question_params)

    respond_to do |format|
      if @frequent_question.save
        format.html { redirect_to @frequent_question, notice: 'Frequent question was successfully created.' }
        format.json { render :show, status: :created, location: @frequent_question }
      else
        format.html { render :new }
        format.json { render json: @frequent_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequent_questions/1
  # PATCH/PUT /frequent_questions/1.json
  def update
    respond_to do |format|
      if @frequent_question.update(frequent_question_params)
        format.html { redirect_to @frequent_question, notice: 'Frequent question was successfully updated.' }
        format.json { render :show, status: :ok, location: @frequent_question }
      else
        format.html { render :edit }
        format.json { render json: @frequent_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequent_questions/1
  # DELETE /frequent_questions/1.json
  def destroy
    @frequent_question.destroy
    respond_to do |format|
      format.html { redirect_to frequent_questions_url, notice: 'Frequent question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequent_question
      @frequent_question = FrequentQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frequent_question_params
      params.require(:frequent_question).permit(:question, :answer)
    end
end
