module Xmpush
  class AndroidBuilder < Message

    # 设置通知类型
    NOTIFY_TYPE_DEFAULT_ALL     = -1
    NOTIFY_TYPE_DEFAULT_SOUND   = 1 # 使用默认提示音提示
    NOTIFY_TYPE_DEFAULT_VIBRATE = 2 # 使用默认震动提示
    NOTIFY_TYPE_DEFAULT_LIGHTS  = 4 # 使用默认led灯光提示

    NTF_CENTER_NTF   = 0 # 通知栏消息
    PASS_THROUGH_NTF = 1 # 透传消息

    attr_accessor :pass_through, :notify_id, :sound_url

    def initialize(**message)
      extra = message.delete(:extra) if message[:extra]
      @pass_through = message[:pass_through] || NTF_CENTER_NTF
      @notify_id = message[:notify_id] || 0
      super(message)
      @notify_type  = message[:notify_type] || NOTIFY_TYPE_DEFAULT_ALL
      extra_message = {sound_url: ""}
      extra_message.merge!(extra) if extra
      @extra = extra_message
    end

    def build
      extra_message = extra(@extra) if @extra
      message = {
        payload: @payload,
        title: @title,
        notify_id: @notify_id,
        pass_through: @pass_through,
        notify_type: @notify_type,
        restricted_package_name: @restricted_package_name,
        description: @description
      }
      message.merge!(extra_message)
      return message
    end

  end
end
