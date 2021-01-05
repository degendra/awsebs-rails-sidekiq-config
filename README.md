# AWS Elastic Beanstalk Sidekiq Worker Config

This is an attempt to run rails API, Redis Server and Sidekiq Worker on a AWS Beanstalk web environment. This type of configuration is suitable for feature or staging environments. For the production environment, consider using ElasticCache for redis server and separate web/ worker environment for sidekiq workers. This setup usages `Rails 6`, `Redis 4` and `Sidekiq 6` running on Amazon Linux 2 instance. For the deployment on the Linux 1 instance checkout to `Linux1` branch.

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
