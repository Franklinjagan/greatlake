class ApplicationController < ActionController::Base
  protect_from_forgery

  def create
    @application = Application.find params[:application_code]
    @errors = ContactUsForm.validate_fields(params, @application)
    @application.save_contact_us_form(params[:contact_us_form]) if @errors.blank?

    respond_to do |format|
      format.js #{render :json => {:status => 'success'}.to_json}
    end
  end
end
