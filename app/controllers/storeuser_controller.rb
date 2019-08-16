class StoreuserController < ApplicationController
  def login
  end

  def logout
  end

  def create_target
    _target = params[:target]

    if Storeuser.find_by(target: _account) != nil
       redirect_back fallback_location: root_path 
    end
    
    storeuser = Storeuser.new
    storeuser.target =_targett 
    storeuser.save
    redirect_to controller: 'ad', action: 'read'
  end

  def modify
    _id = params[:id]
    @storeuser = Store.find(_id)
    
    authorize_action_for @storeuser
  end


  def update_target
    _id = params[:id]
    _target = params[:target]

    storeuser = storeuser.find(_id)
    authorize_action_for store 

    storeuser.target = _target 
    storeuser.save 

    redirect_to controller: 'storeuser', action: 'read'
  end
  def update_image
    _id = params[:id]
    _image = params[:image]

    storeuser = storeuser.find(_id)
    authorize_action_for store 

    storeuser.image = _image 
    storeuser.save 

    redirect_to controller: 'storeuser', action: 'read'
 
  end

  def delete
    _id = params[:id]

    storeuser = Storeuser.find(_id)
    authorize_action_for storeuser 

    storeuser.destroy 
  end

  def read
      
      @storeuser = Storeuser.find(params[:id])
  end
end
