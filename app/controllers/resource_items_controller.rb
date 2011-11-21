class ResourceItemsController < InheritedResources::Base

	def upload
	    require 'fileutils'
		tmp = params[:file_upload][:my_file].tempfile
		file = File.join("public", params[:file_upload][:my_file].original_filename)
		FileUtils.cp tmp.path, file
		#FileUtils.rm fileutils
      end
end
