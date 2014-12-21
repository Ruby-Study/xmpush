module Xmpush
  class AndroidBuilder < Message

    # 设置通知类型
    NOTIFY_TYPE_DEFAULT_ALL     = -1
    NOTIFY_TYPE_DEFAULT_SOUND   = 1 # 使用默认提示音提示
    NOTIFY_TYPE_DEFAULT_VIBRATE = 2 # 使用默认震动提示
    NOTIFY_TYPE_DEFAULT_LIGHTS  = 4 # 使用默认led灯光提示

    NTF_CENTER_NTF   = 0 # 通知栏消息
    PASS_THROUGH_NTF = 1 # 透传消息

    attr_accessor :pass_through, :notify_id

    def initialize(**message)
      @pass_through = message.delete(:pass_through) || 0
      @notify_id = message.delete(:notify_id) || 0
      super(message)
      # @extra = {sound_url: sound_url, badge: badge}
    end

  end
end
