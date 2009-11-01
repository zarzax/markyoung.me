class Contact
  include Validatable
  
  attr_accessor :name, :email, :subject, :message
  
  validates_presence_of :name, :email, :subject, :message
  
  # http://snipplr.com/view/1248/rails-validate-email/
  validates_format_of     :email,
                          :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                          :message    => 'email must be valid<br />'
                          
  validates_length_of :name, :maximum => 50, :message => 'Name is to long.'
  validates_length_of :subject, :maximum => 50, :message => 'Name is to long.'
  validates_length_of :message, :maximum => 900, :message => 'Message is to long.  Try emailing to mark@zarzax.com'

  
  
end