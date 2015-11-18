# config/initializers/pdfkit.rb
PDFKit.configure do |config|
	if Gem.win_platform? then
		config.wkhtmltopdf = 'C:\wkhtmltopdf\bin\wkhtmltopdf.exe'
	end
  config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost"
  config.verbose = false
end