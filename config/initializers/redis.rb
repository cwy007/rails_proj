# https://www.jianshu.com/p/add3471b2328?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation
REDIS_CONFIG = {
  host: Rails.env.production? ? '8.131.71.102' : 'localhost',
  port: 6379,
  # db: Rails.env.test? ? 3 : 0
}
$tmp_redis = Redis.new(REDIS_CONFIG)
