class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @user = current_user
    @task = @user.tasks.new
  end
end
