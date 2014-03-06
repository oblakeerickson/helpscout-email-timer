require 'mail'

class Emailer

  def initialize
    @mail = Mail.new do
      from    'blake_test@example.com'
      to      'o.blakeerickson@gmail.com'
      subject 'This is a test email'
      body    'How long did it take you to receive this message?'
    end
  end

  def deliver
    @mail.delivery_method :sendmail
    @mail.deliver!
  end
end
