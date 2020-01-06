class CallbacksController < ApplicationController
  def create
    callbacks = save_api
    render :json => { success: :ok, data: params }
  end

  def index
    callbacks = ::Callback.all.limit(10)
    render :json => { success: :ok, data: callbacks}
  end

  private def save_api
    puts params.inspect

    # Callback.create!(notify_url: params[:controller], params: params.to_json)
    ::Callback.create!(notify_url: params[:controller], params: params.to_json)
  end
end
