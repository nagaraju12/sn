class PhotosController < ApplicationController
	def new
		@photo =Photo.new
	end
	def index
		@photos =Photo.all
	end
	def create
		@photo =Photo.new(new_params)
		@photo.save
		redirect_to photo_path
	end
	private
	def new_params
		params.require(:photo).permit!
	end
end
