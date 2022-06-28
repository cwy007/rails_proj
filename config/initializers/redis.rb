# https://www.jianshu.com/p/add3471b2328?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation
REDIS_CONFIG = {
  host: '127.0.0.1',
  port: 6379,
  # db: Rails.env.test? ? 3 : 0
}
$tmp_redis = Redis.new(REDIS_CONFIG)
