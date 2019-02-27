class HomeworksController < ApplicationController
  before_action :set_homework, only: %i[show edit update destroy]
  before_action :set_categories, only: %i[new edit update create]

  def index
    @homeworks = Homework.all
  end

  def show; end

  def new
    @homework = Homework.new
  end

  def edit; end

  def create
    @homework = Homework.new(homework_params)

    respond_to do |format|
      if @homework.save
        format.html { redirect_to @homework, notice: 'Homework was successfully created.' }
        format.json { render :show, status: :created, location: @homework }
      else
        format.html { render :new }
        format.json { render json: @homework.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @homework.update(homework_params)
        format.html { redirect_to @homework, notice: 'Homework was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework }
      else
        format.html { render :edit }
        format.json { render json: @homework.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @homework.destroy
    respond_to do |format|
      format.html { redirect_to homeworks_url, notice: 'Homework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_homework
    @homework = Homework.find(params[:id])
  end

  def set_categories
    @category = Category.all
  end

  def homework_params
    params.require(:homework).permit(:homework_name, :category, :deadline, :description, :category_id)
  end
end
