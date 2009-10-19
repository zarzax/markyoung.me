class ContactsController < ApplicationController
  
  def index
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new
    @contact.name     = params['name']
    @contact.email    = params['email']
    @contact.subject  = params['subject']
    @contact.message  = params['message']
    
    begin
      # @contact.save
      NotificationMailer.deliver_contact(@contact)
      flash[:notice] = "Your message has been sent!"
      redirect_to :controller => 'projects'
    rescue 
      flash[:notice] = "Message deliver failed."
      redirect_to :controller => 'projects'
    end    
  end
  
end
