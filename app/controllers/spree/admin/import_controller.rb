class Spree::Admin::ImportController < Spree::Admin::BaseController
  respond_to :html, :js

  def index
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.js { render :layout => false }
    end
  end

  def new
    respond_to do |format|
      format.html do
    
        if !params[:file]
          redirect_to admin_import_index_path, flash: { error: t(:import_file_required) } and return
        else
          import_result = Spree::SS_Import.import_file(params[:file].path)
        end
        
        if import_result
          redirect_to admin_products_path, notice: t(:import_success, :message => import_result)
        else
          redirect_to admin_products_path, flash: { error: t(:import_error) }
        end
      end
    end
  end

end

