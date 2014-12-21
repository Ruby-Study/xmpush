## About

[XiaoMi push](http://dev.xiaomi.com/) Ruby SDK

## Install

```ruby
gem install xmpush
```

in Gemfile:

```ruby
gem 'xmpush'
```

## Usage


```ruby
@xm_service = Xmpush::Service.config do |s|
  s.sandbox = true # default false
  s.ios_secret = "ios secret key"
  s.bundle_id = "com.xxx.ios"
  s.android_secret = 'android secret key'
  s.package_name = "com.xxx.android"
  s.connection_adapter = :net_http # default
end

# just iOS
message1 = {description:  'hello'}
@message1 = @xm_service.build(:ios, message1)
@xm_service.push(:all, @message1)

message2 = {description:  'hello alias', extra: {pid: 111}}
@message2 = @xm_service.build(:ios, message2)

@xm_service.push(:alias, @message2, alias: '1043478')

# iOS and Android
message3 = {description:  'push to iOS and Android client'}
@message2 = @xm_service.build(message3)
@xm_service.push(:all, @message3)

```

## TODO

- Android push
- feedback/ stats/ tracer/ targeted_message
