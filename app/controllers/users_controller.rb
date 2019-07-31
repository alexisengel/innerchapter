class UsersController < ApplicationController
	URL = "https://api.weixin.qq.com/sns/jscode2session".freeze
	skip_before_action :verify_authenticity_token

  def wechat_params
    {
      appid: ENV["APP_ID"],
      secret: ENV["APP_SECRET"],
      js_code: params[:code],
      grant_type: "authorization_code"
    }
  end

  def wechat_user
    @wechat_response ||= RestClient.post(URL, wechat_params)
    @wechat_user ||= JSON.parse(@wechat_response.body)
  end

  def login
    @new_user = false
    @user = User.find_by(openid: wechat_user.fetch("openid"))
    if @user.nil?
      @user = User.create(openid: wechat_user.fetch("openid"), email: wechat_user.fetch("openid") + "@mp.qq.com", password: Devise.friendly_token(6), comp: 0)
      @new_user = true
    end
    render json:  {
      userId: @user.id,
      newUser: @new_user,
      comp: @user.comp
    }
  end
end
