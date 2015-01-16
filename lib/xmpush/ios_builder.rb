module Xmpush
  class IosBuilder < Message
    attr_accessor :sound_url, :badge

    def initialize(**message)
      super(message)
      extra = message.delete(:extra) if message[:extra]
      extra_message = {sound_url: "", badge: 1}
      extra_message.merge!(extra) if extra
      @extra = extra_message
    end

    def build
      extra_message = extra(@extra) if @extra
      message = {
        restricted_package_name: @restricted_package_name,
        description: @description
      }
      message.merge!(extra_message)
      return message
    end

  end
end
