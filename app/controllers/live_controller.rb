class LiveController < ApplicationController
	require 'net/http'
	require 'google_custom_search_api'
	require 'yaml'

	def show
		@test = Test.find(params[:id])

	end

	def results
		@test = Test.find(params[:id])
		#for testing purposes (don't hit the rate limiter on the CSE API)
		#file = File.join(Rails.root, 'config', 'test-serp-data.yml')
		#@serp = YAML.load_file(file)
		@serp = GoogleCustomSearchApi.search(params[:q])
		#logger.debug(@serp)
	end

end
