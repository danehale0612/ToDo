class TasksController < ApplicationController


  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = "Your task has been added!"
    else
      flash[:notice] = "Enter Task field Empty. Could not add Task."
    end
    redirect_to :root
  end
end