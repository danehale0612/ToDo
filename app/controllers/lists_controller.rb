class ListsController < ApplicationController


  def index
    @lists = List.all
    @list = List.new
    @task = Task.new 
    @tasks = Task.all
  end

  def create
    @list = List.create( params[:list] )
    if @list.save
      flash[:notice] = "Your list has been added!"
    else
      flash[:notice] = "Enter List field Empty. Could not add List."
    end
    redirect_to :root
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      flash[:notice] = "#{@list.name} has been Updated"
      redirect_to :root
    else
      flash[:notice] = "#{@list.name} could not be updated. Try Again"
      redirect_to edit_list_path(@list)
    end
  end

  def destroy 
    @list = List.find(params[:id])
    if @list.destroy
      flash[:notice] = "#{@list.name} has been deleted."
      redirect_to :root
    else
      flash[:notice] = "#{@list.name} could not be deleted."
      redirect_to :root
    end
  end

end