class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.create( params[:task] )
    if @task.save
      flash[:notice] = "Your task has been added!"
      redirect_to :root
    else
      flash[:notice] = "Name field Empty. Could not add Task."
      redirect_to :root
    end
  end
end