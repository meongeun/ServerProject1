class CustomeruserController < ApplicationController
  def login

  end

  def create_residence
    _residence =params[:residence]
    
    if Customeruser.find_by(residence: _residence) != nil
        redirect_back fallback_location: root_path
    end

    customeruser = Customuser.new
    customeruser.residence = _residence
    customeruser.save
    redirect_to controller: 'ad', action: 'read'
  end

  def read
      _id = params[:id]
      @customeruser = Customeruser.find_by(_id)


  end

  def modify_image
    _id = params[:id]
    @customeruser = Customeruser.find_by(_id)

    authorize_action_for @customeruser
  end

  def update_image
    _id = params[:id]
    @customeruser = Customeruser.find_by(_id)

    if params[:image]
        @customeruser.image = params[:image]
    end

    @customeruser.save

    redirect_back fallback_location: root_path

  end

  def modify_residence
    _id = params[:id]
    @customeruser = Customeruser.find_by(_id)

    authorize_action_for @customeruser
  end

  def update_residence
    _id =params[:id]
    _residence = params[:residence]
    
    customeruser = Customeruser.find(_id)
    authorize_action_for customeruser 

    customeruser.residence = _residence

    customeruser.save
    redirect_to controller: 'customeruser', action: 'read'
  end
  def delete
    _id = params[:id]

    customeruser = Customeruser.find(_id)

    customeruser.destroy
  end

  def logout
  
  end

  def read_downad
    _id = params[:id]
    @customeruser = Customeruser.find_by(_id)


  end

  def read_starstore
    _id = params[:id]
    @customeruser = Customeruser.find_by(_id)


  end
end
