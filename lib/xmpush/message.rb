module Xmpush
  class Message
    EXTRA_PREFIX = 'extra.'
    attr_accessor :payload, :title, :description, :time_to_live, :time_to_send, :extra, :notify_type, :topic, :expires
  end
end
