class ListsController < ApplicationController
  # ['index', 'show', 'new', 'create', 'edit', 'update', 'destroy']
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
      if @list.save
        redirect_to_list_path(@list)
      else
        render :new, status: :unprocessable_entity
  end

  def new
    @list = List.new
    end
  end
end
