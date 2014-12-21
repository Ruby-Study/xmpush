module Xmpush
  class IosBuilder < Message
    attr_accessor :sound_url, :badge

    def initialize(sound_url: "", badge: 1)
      super()
      @extra = {sound_url: sound_url, badge: badge}
    end

    def build
      if @extra
        extra_message = extra(@extra)
      end
      message = {
        restricted_package_name: @restricted_package_name,
        description: @description
      }
      message.merge!(extra_message)
      return message
    end

  end
end
