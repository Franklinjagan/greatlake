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

	def thanks1
		
	end

	def marketing
		
	end

	def landing_page
	end

	def pdf_download_pgpba
		path = "#{Rails.root}/public/pdf/Great-Lakes-PGPBA.pdf"
		send_data File.read(path),:filename => "Great-Lakes-PGPBA",:type => "application/pdf" ,disposition: "attachment"
	end

	def download_pdf_pgpba
		path = "#{Rails.root}/public/pdf/Careers_in_Analytics_Great_Lakes.pdf"
		send_data File.read(path),:filename => "Careers_in_Analytics_Great_Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	end

	def download_brchr_pgpba
		path = "#{Rails.root}/public/pdf/Business Analytics Program - Great Lakes - Brochure.pdf"
		send_data File.read(path),:filename => " Business Analytics Program - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
	end
end
