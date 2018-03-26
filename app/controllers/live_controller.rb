class LiveController < ApplicationController
	require 'net/http'
	require 'google_custom_search_api'

	def show
		@test = Test.find(params[:id])

	end

	def results
		@test = Test.find(params[:id])
		@serp = GoogleCustomSearchApi.search(params[:q])
		#logger.debug(@serp)
	end

end
