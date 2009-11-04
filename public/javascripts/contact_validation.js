// Validations for the contact form.  To be loaded after page load.

Event.observe(window, 'load', function() {
	var contact_name = new LiveValidation('contact_name');
	contact_name.add( Validate.Presence );
	contact_name.add( Validate.Length, {minimum: 2, maximum: 50});
	var contact_email = new LiveValidation('contact_email');
	contact_email.add( Validate.Email );
	contact_email.add( Validate.Length, {minimum: 5, maximum: 50});
	var contact_subject = new LiveValidation('contact_subject');
	contact_subject.add( Validate.Presence );
	contact_subject.add( Validate.Length, {minimum: 2, maximum: 50});
	var contact_message = new LiveValidation('contact_message');
	contact_message.add( Validate.Presence );
	contact_message.add( Validate.Length, {minimum: 2, maximum: 500});
});