# Review the following code
# 'Self' is referenced in a few different places.
# Fill in the blanks

class Email 
    puts "#{self} will return Email class"

    attr_accessor :sender, :receiver, :subject, :body

    def initialize(sender, receiver, subject, body)
        self.sender = sender
        self.receiver = receiver
        self.subject = subject
        self.body = body
        puts "#{self} will return an instance of the Email class"
    end 

    def print_signature 
        puts "Sincerely, #{self.sender}"
        puts "#{self} will return instance of the Email class"
    end 

end 

email = Email.new("aysan", "Jae", "Learning OO", "This is fun")
email.print_signature