class ScreensController < ApplicationController
	
	def index
		  @download_file= false
		if request.referer.present? && request.referer.include?('businessanalyticsprogram')
			@download_file = true
		else
			# well, the request is not coming from businessanalyticsprogram
		end
	end

	def thanks
		
	end

	def marketing
		
	end

	

	def download_pdf_pgpba
		path = "#{Rails.root}/public/pdf/Business_Analytics_Program_Great_Lakes.pdf"
		send_data File.read(path),:filename => "Opportunities in Analytics - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	end

	def download_brchr_pgpba
		path = "#{Rails.root}/public/pdf/Business Analytics Program - Great Lakes - Brochure.pdf"
		send_data File.read(path),:filename => " Business Analytics Program - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	end
end
