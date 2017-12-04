class DocumentsController < ApplicationController
  def new
    @folder = Folder.find(params[:folder_id])
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    @folder = Folder.find(params[:folder_id])
    @document.folder = @folder
    if @document.valid?
      @document.save
      redirect_to folder_path(@folder)
    else
      render :new
    end
  end

  private

  def document_params
    params.require(:document).permit(:name, :photo, :photo_cache)
  end
end
