class ContactMailer < ActionMailer::Base
    default to: 'anna@thisvery.space'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: '#{name}'s Contact Form Message')
    end
end