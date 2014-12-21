module Xmpush
  class Message
    EXTRA_PREFIX = 'extra.'
    attr_accessor :payload, :title, :description, :time_to_live, :time_to_send, :extra, :notify_type, :restricted_package_name

    def initialize(payload: "", restricted_package_name: "", title: "", description: "", time_to_live: "", time_to_send: "", extra: "", notify_type: "")
      @payload = payload
      @restricted_package_name = restricted_package_name
      @title = title
      @description = description
      @time_to_live = time_to_live
      @time_to_send = time_to_send
      @extra = extra
      @notify_type = notify_type
    end

    def extra(options={})
      options.keys.inject({}) do |h, key|
        h["#{EXTRA_PREFIX}#{key}"] = options.delete(key); h
      end
    end
  end
end
