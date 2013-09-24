class ScreensController < ApplicationController
	def index
	     @request_url= request.referer
	end

	def download_pdf_pgpba
	    path = "#{Rails.root}/public/pdf/Opportunities in Analytics - Great Lakes.pdf"
	    send_data File.read(path),:filename => "Opportunities in Analytics - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	
	end
	def download_brchr_pgpba
    path = "#{Rails.root}/public/pdf/PGPBA - Great Lakes - Brochure.pdf"
    send_data File.read(path),:filename => "PGPBA - Great Lakes - Brochure.pdf",:type => "application/pdf" ,disposition: "attachment"
  end
end
