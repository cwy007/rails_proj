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
    render json: {
      code: 200,
      message: '成功',
      data: {
        list: [{
          scale: params[:scales] && params[:scales][0] || 'ABC123',
          weight: rand(1..20),
          success: 1,
          unit: 'kg',
          msg: 'weight 1-20',
        }]
      },
    }.to_json
  end

  private

end
