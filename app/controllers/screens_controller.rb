class ScreensController < ApplicationController
	def home
	     @request_url= request.referer
	end

	def download_pdf_pgpba
	    path = "#{Rails.root}/public/pdf/Opportunities in Analytics - Great Lakes.pdf"
	    send_data File.read(path),:filename => "Opportunities in Analytics - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	end
end
