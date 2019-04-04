class YogaClassesController < ApplicationController
  before_action :authenticate_user! #test this
  #before_action :set_client

  def thirty_minute_yoga_classes
  end

  def fourty_five_minute_yoga_classes
  end

  def sixty_minute_yoga_classes
  end

  def new
    @yoga_class = current_user.yoga_classes.build(client_id: params[:client_id])
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
    @comment = @yoga_class.comments.build
    @comments = @yoga_class.comments.all
    render json: YogaClassSerializer.serialize(@yoga_class)
  end


  def edit
    @yoga_class = YogaClass.find(params[:id])
  end

  def update
    @yoga_class = YogaClass.find(params[:id])

    @yoga_class.update(yoga_class_params)

    if @yoga_class.save
     redirect_to @yoga_class
    else
      render :edit
    end
  end

  def index
    @yoga_classes = YogaClass.all
    #render json: @yoga_classes
  end

  #def yoga_class_data
    #yoga_class = YogaClass.find(params[:id])
    #render json: YogaClassSerializer.serialize(yoga_class)
    #render json: yoga_class.to_json
  #end


  private

  def yoga_class_params
    params.require(:yoga_class).permit(:notes, :location, :title, :intention, :class_plan, :class_size, :duration, :user_id, :client_id)
  end

  #def set_client
  #  @client = Client.find(params[:client_id])
  #end


end
