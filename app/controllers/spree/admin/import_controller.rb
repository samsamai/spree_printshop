class Spree::Admin::ImportController < Spree::Admin::BaseController
  respond_to :html, :js

  def index
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.js { render :layout => false }
    end
  end

  def new
    
    if !params[:file]
      import_result = false
    else
      import_result = Spree::SS_Import.import_file(params[:file].path)
    end
    
    respond_to do |format|
      format.html do
        if import_result
          redirect_to admin_products_path, notice: t(:import_success, :count => import_result)
        else
          redirect_to admin_products_path, flash: { error: t(:import_error) }
        end
      end
    end
  end

end

