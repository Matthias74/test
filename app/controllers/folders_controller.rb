class FoldersController < ApplicationController
  def index
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.user_id = current_user.id
    if @folder.valid?
      @folder.save
      redirect_to  folder_path(@folder)
    else
      raise
      render :new
    end
  end

  def show
    @folder = Folder.find(params[:id])
  end

  private

  def folder_params
    params.require(:folder).permit(:name)
  end
end
