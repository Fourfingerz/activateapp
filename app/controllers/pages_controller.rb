class PagesController < ApplicationController
  def home
	# @organizations = Organization.all
  end

  def loginGuidestar
  	require 'net/http'
  	require 'json'

  	query_term = URI::escape params['pages']['search_term']

	uri = URI('https://Sandboxdata.guidestar.org/v1/search.json?q='+query_term)

	Net::HTTP.start(uri.host, uri.port,
	  :use_ssl => uri.scheme == 'https', 
	  :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http|

	  request = Net::HTTP::Get.new uri.request_uri
	  request.basic_auth 'a250b52dbe9b47848208ebde97f796bb', ''

	  response = http.request request # Net::HTTPResponse object

	  puts response
	  puts response.body

	  @response = response.body
	  @hash = ActiveSupport::JSON.decode(@response)

	end

end
end
