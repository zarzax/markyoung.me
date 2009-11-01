class ContactsController < ApplicationController
  
  def index
    # create
    @contact = Contact.new
  end
  
  def create
    
    # Grab the contact parameters from params hash
    # Example:
    # params = "contact"=>{
    #      "name"=>"test", "subject"=>"test@test.com", 
    #      "message"=>"test", "email"=>"test"}
    @contact_params = params[:contact]
    
    # Create the new contact object and load parameters
    @contact = Contact.new
    @contact.name = @contact_params[:name]
    @contact.email = @contact_params[:email]
    @contact.subject = @contact_params[:subject]
    @contact.message = @contact_params[:message]
    
    # Create notification only if contact is valid
    # using the Validatable gem. Else flash error
    # array.  Redirect to contact index.
    if @contact.valid?
      NotificationMailer.deliver_contact(@contact2)
      flash[:notice] = "Your message has been sent!"
      redirect_to :controller => 'contacts', :action => 'index'
    else
      flash[:notice] = "Message deliver failed."
      flash[:error] = @contact.errors.full_messages
      redirect_to :controller => 'contacts', :action => 'index'
    end    
  end
  
end
