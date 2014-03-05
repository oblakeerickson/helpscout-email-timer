class Connection

  def initialize
    @helpscout = HelpScout::Client.new("28a0ebac07a752be074ca427e3aa2da92f94d426")
  end

  def mailboxes
    @helpscout.mailboxes
  end

  def conversations(id)
    @helpscout.conversations(id, "active", nil)
  end
end
