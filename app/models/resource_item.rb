class ResourceItem < ActiveRecord::Base
  belongs_to :resource_cate
  attr_accessor :upload_file
end
