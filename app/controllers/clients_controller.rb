class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    #binding.pry
    if @client.save
      redirect_to @client
    else
      render :new
    end
    end

  def show
    @client = Client.find(params[:id])
  end


  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    @client.update(yoga_class_params)

    if @client.save
     redirect_to @client
    else
      render :edit
    end
  end

  def index
    @clients = Client.all.sort_by {|client| client.org_name}
  end

  private

  def client_params
    params.require(:client).permit(:org_name, :point_of_contact, :email)
  end
end
