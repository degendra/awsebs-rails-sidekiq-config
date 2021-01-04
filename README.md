# awsebs-rails-sidekiq-config
AWS Elastic Beanstalk Sidekiq Worker Config

Based on
1. https://medium.com/kite-srm/setting-up-sidekiq-6-0-on-aws-b4f2e01f451c
2. https://github.com/mperham/sidekiq/blob/master/examples/systemd/sidekiq.service

Updates:
1. `systemd` is used instead of `upstart`
2. Support for Linux 2 AMI

Features:
1. Setup Redis server
2. Run sidekiq as a service using systemd
3. Enable swap memory
4. Restart sidekiq on configuration change
