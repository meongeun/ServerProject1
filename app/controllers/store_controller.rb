class StoreController < ApplicationController
  def read
    @store = Store.all
  end

  def create
    _location = params[:loaction]
    _name = params[:name]
    _time = params[:time]
    _menu = params[:menu]

    store = Store.new 
    storstore.name = _name
    store.location = _location
    store.time = _time
    store.menu = _menu
    sotre.save

    redirect_to controller: 'ad', action: 'read'

  end


  def delete
    _id = params[:id]

    store = Store.find(_id)
    authorize_action_for store 

    store.destroy

    redirect_to controller: 'store', action: 'read'
  end

  def modify
    _id = params[:id]
    @store = Store.find(_id)

    authorize_action_for @store
  end

  def update_location
    _id = params[:id]
    _location = params[:location]
    
    store = Store.find(_id)
    authorize_action_for store

    store.location = _location
    store.save 

    redirect_to controller: 'store', action: 'read'

  end
  def update_name
    _id = params[:id]
    _name = params[:name]

    store = Store.find(_id)
    authorize_action_for store 
    store.name = _name
    store.save

    redirect_to controller: 'store', action: 'read'

  end
  def update_time
    _id = params[:id]
    _time = params[:time]

    store = Store.find(_id)
    authorize_action_for store 
    store.time = _time
    store.save

    redirect_to controller: 'store', action: 'read'

  end
  def update_menu
  
    _id = params[:id]
    _menu = params[:menu]

    store = Store.find(_id)
    authorize_action_for store 
    store.menu = _menu
    store.save

    redirect_to controller: 'store', action: 'read'
  end
end
