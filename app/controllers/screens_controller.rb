class ScreensController < ApplicationController
	

	def download_pdf_pgpba
	    path = "#{Rails.root}/public/pdf/Opportunities in Analytics - Great Lakes.pdf"
	    send_data File.read(path),:filename => "Opportunities in Analytics - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	end
end
