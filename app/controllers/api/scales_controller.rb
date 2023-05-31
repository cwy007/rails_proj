class Api::ScalesController < ApplicationController
  protect_from_forgery :except => :weight

  def index
    render json: {
      code: 200,
      message: '成功',
      data: {
        list: ['scale1']
      },
    }.to_json
  end

  def weight
    $tmp_redis.set('weight', params[:body] && params[:body][:weight]) if params[:body] && params[:body][:weight];
    # weight = ("%.15f" % $tmp_redis.get('weight')).sub(/0*$/,"");
    render json: {
      code: 200,
      message: '成功',
      data: {
        list: [{
          scale: params[:body] && params[:body][:scales] && params[:body][:scales][0] || 'ABC123',
          weight: $tmp_redis.get('weight') || rand(1..20),
          success: 1,
          unit: 'kg',
          msg: 'weight 1-20',
        }]
      },
    }.to_json
  end

  private

end
