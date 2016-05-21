class CatalogController < ApplicationController

  def edit
    @setting = Setting.first
  end

  def update
    @setting = Setting.first
    if @setting.update(catalog_params)
      redirect_to edit_catalog_path, notice: 'La URL del catalogo ha sido actualizada.'
    else
      render :action => "edit"
    end
  end

  private

  def catalog_params
    params.require(:setting).permit(:catalog_url)
  end  
end 