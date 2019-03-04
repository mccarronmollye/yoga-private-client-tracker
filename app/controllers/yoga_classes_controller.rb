class YogaClassesController < ApplicationController

  def new
    @yoga_class = YogaClass.new
    @yoga_class.user = current_user
  end

  def create
    @yoga_class = YogaClass.new(yoga_class_params)
    @yoga_class.user = current_user
    #binding.pry
    if @yoga_class.save
      redirect_to @yoga_class
    else
      render :new
    end
    end

  def show
    @yoga_class = YogaClass.find(params[:id])
  end


  def edit
    @yoga_class = YogaClass.find(params[:id])
  end

  def update
    @yoga_class = YogaClass.find(params[:id])

    @yoga_class.update(yoga_class)

    if @yoga_class.save
     redirect_to @yoga_class
    else
      render :edit
    end
  end


  private

  def yoga_class_params
    params.require(:yoga_class).permit(:notes, :location, :title, :intention, :class_plan, :class_size, :duration, :user_id)
  end

end
