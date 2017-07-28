class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :geo_pattern
	def geo_pattern
		@pattern = GeoPattern.generate('Mastering Markdown', patterns: :octagons, base_color: '#000000')
		@pattern.to_svg
	end
end
