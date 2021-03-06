class CertifiedProgramUsersController < ApplicationController

  def show_applicant_image   
    @certificateprogramusers = CertifiedProgramUser.find(params[:id])
    send_data @certificateprogramusers.applicant_photo, :type => @certificateprogramusers.applicant_photo_type, :disposition => 'inline'
    http_cache(@certificateprogramusers)
  end
	def index
		
     @request_url= request.referer

  end
  def download_pdf_pgpba
    path = "#{Rails.root}/public/pdf/Opportunities_in_Analytics-Great_Lakes.pdf"
    send_data File.read(path),:filename => "Opportunities in Analytics - Great Lakes.pdf",:type => "application/pdf" ,disposition: "attachment"
  end


	def new
		@certificateprogramuser = CertifiedProgramUser.new
	end

	def create
		@certificateprogramuser = CertifiedProgramUser.new(params[:certified_program_user])

          
		if @certificateprogramuser.save		 
		 flash[:success] = "Application Submitted Succesfully"		
			redirect_to root_url             
		else		  
		 flash[:error] = "Mandatory Fields should not be empty" 
			 render :new          
		end
	end
	def show
		@certificateprogramuser=CertifiedProgramUser.find(params[:id])
	end
	def show_details
		@certificateprogramuser=CertifiedProgramUser.all
	end
end
