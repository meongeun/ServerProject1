class WarnController < ApplicationController
  def create
    _storeuser= params[:storeuser]
    _content = params[:content]
    _customeruser = params[:customeruser]

    warn = Warn.new
    warn.storeuser = _storeuser
    warn.content = _content
    warn.customeruser = _customeruser

    warn.save
    redirect_back fallback_location: root_path
  end
end
