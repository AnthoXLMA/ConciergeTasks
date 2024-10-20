class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
  end

  def show
  end
end
