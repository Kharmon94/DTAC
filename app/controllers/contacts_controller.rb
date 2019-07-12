class ContactsController < InheritedResources::Base

	def new
		@contact = Contact.new
		@special = params[:special_services]
	end

	def create
	    @contact = Contact.new(params[:contact])
	    @contact.request = request
	    if @contact.deliver
	      flash.now[:error] = nil
	  redirect_to root_path, notice: 'Booking sent we will reach you soon, Thank You!!'
	    else
	      flash.now[:error] = 'Oops there has been a problem, Please contact us on our social media!'
	      render :new
	    end
	 end

  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :address, :city, :zip, :bed, :bath, :square_feet, :special_services, :service_type, :phone_number)
    end

end
