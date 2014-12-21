module Xmpush
  class XmResource

    # Xmpush::XmResource::OFFICIAL_DOMAIN

    OFFICIAL_DOMAIN = "https://api.xmpush.xiaomi.com"
    SANDBOX_DOMAIN = "https://sandbox.xmpush.xiaomi.com"
    REG_URL = "/v2/message/regid"
    ALIAS_URL = "/v2/message/alias"
    TOPIC_URL = "/v2/message/topic"
    MTOPIC_URL = "/v2/message/multi_topic"
    ALL_URL = "/v2/message/all"

    SUBSCRIBE_URL= "/v2/topic/subscribe"
    UNSUBSCRIBE_URL = "/v2/topic/unsubscribe"

    MMREG_URL = "/v2/multi_messages/regids"
    MMALIAS_URL = "/v2/multi_messages/aliases"

    STATS_URL = '/v1/stats/message/counters'
    TRACE_URL = '/v1/trace/message/status'
    TRACES_URL = '/v1/trace/messages/status'
    VALIDATE_REGIDS = '/v1/validation/regids'


    FETCH_INVALID_REGIDS_URL = "https://feedback.xmpush.xiaomi.com/v1/feedback/fetch_invalid_regids"

    UNION = 'UNION'
    INTERSECTION = 'INTERSECTION'
    EXCEPT = 'EXCEPT'


  end
end
