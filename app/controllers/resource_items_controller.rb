class ResourceItemsController < InheritedResources::Base
    before_filter :authenticate_admin_user!
    def create
        #upload file
        require 'fileutils'
        tmp = params[:resource_item][:upload_file].tempfile
        file = File.join("public", params[:resource_item][:upload_file].original_filename)
        FileUtils.cp tmp.path, file
        #FileUtils.rm fileutils

        super
    end

    def show
        redirect_to "/admin/resource_items/#{params[:id]}"
    end
end
