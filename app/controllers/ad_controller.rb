class AdController < ApplicationController
  def read_short    
   _startday = params[:startday]
   _endday = params[:endday]
   if(_startday == _endday)
       @ads = Ad.where("startday=? AND endday=?", params[:startday], params[:endday])
    end
  end

  def read_long
    _startday = params[:startday]
   _endday = params[:endday]
   if(_startday != _endday)    
    @ads = Ad.where("startday=?",params[:startday])
   end
  end

  def read
    @Ads = Ad.all
  end

  def create_discount
    _kind = params[:kind]
    _name = params[:name]
    __menu = params[:menu]
    _starttime = params[:starttime]
    _endtime = params[:endtime]
    _startday= params[:startday]
    _endday = params[:endday]
    _repeat = params[repeat]
    _startdiscount = params[:startdiscount]
    _timegap = params[:timegap]
    _discountgap = params[:discountgap]
    _storeuser_id = params[:storeuser_id]

    discount_ad = Ad.new
    discount_ad.kind = _kind
    discount_ad.name = _name
    discount_ad.menu = _menu
    discount_ad.starttime = _starttime
    discount_ad.endtime = _endtime
    discount_ad.startday = _startday
    discount_ad.endday = _endday
    discount_ad.repeat = _repeat
    discount_ad.startdiscount = _startdiscount
    discount_ad.timegap =_timegap
    discount_ad.discountgap = _discountgap
    discount_ad.storeuser_id = _storeuser_id

    discount_ad.save

    redirect_to controller: 'ad', action: 'read'
  end
  def create_fcfs
    _kind = params[:kind]
    _name = params[:name]
    __menu = params[:menu]
    _starttime = params[:starttime]
    _endtime = params[:endtime]
    _startday= params[:startday]
    _endday = params[:endday]
    _repeat = params[repeat]
    _startdiscount = params[:startdiscount]
    _timegap = params[:timegap]
    _discountgap = params[:discountgap]
    _storeuser_id = params[:storeuser_id]

    fcfs_ad = Ad.new
    fcfs_ad.kind = _kind
    fcfs_ad.name = _name
    fcfs_ad.menu = _menu
    fcfs_ad.starttime = _starttime
    fcfs_ad.endtime = _endtime
    fcfs_ad.startday = _startday
    fcfs_ad.endday = _endday
    fcfs_ad.repeat = _repeat
    fcfs_ad.startdiscount = _startdiscount
    fcfs_ad.timegap =_timegap
    fcfs_ad.discountgap = _discountgap
    fcfs_ad.storeuser_id = _storeuser_id

    fcfs_ad.save

    redirect_to controller: 'ad', action: 'read'
  end

  def create_plus
    _kind = params[:kind]
    _name = params[:name]
    __menu = params[:menu]
    _starttime = params[:starttime]
    _endtime = params[:endtime]
    _startday= params[:startday]
    _endday = params[:endday]
    _repeat = params[repeat]
    _startdiscount = params[:startdiscount]
    _timegap = params[:timegap]
    _discountgap = params[:discountgap]
    _storeuser_id = params[:storeuser_id]

    plus_ad = Ad.new
    plus_ad.kind = _kind
    plus_ad.name = _name
    plus_ad.menu = _menu
    plus_ad.starttime = _starttime
    plus_ad.endtime = _endtime
    plus_ad.startday = _startday
    plus_ad.endday = _endday
    plus_ad.repeat = _repeat
    plus_ad.startdiscount = _startdiscount
    plus_ad.timegap =_timegap
    plus_ad.discountgap = _discountgap
    plus_ad.storeuser_id = _storeuser_id

    plus_ad.save

    redirect_to controller: 'ad', action: 'read' 
  end

  def modify
    _id = params[:id]
    _kind = params[:kind]

    @ad = Ad.where("kind = ?", _name)
    authorize_action_for @ad
  end
  
  def update_discount
    _id = params[:id]
    _kind = params[:kind]
    _name = params[:name]
    __menu = params[:menu]
    _starttime = params[:starttime]
    _endtime = params[:endtime]
    _startday= params[:startday]
    _endday = params[:endday]
    _repeat = params[repeat]
    _startdiscount = params[:startdiscount]
    _timegap = params[:timegap]
    _discountgap = params[:discountgap]
    _storeuser_id = params[:storeuser_id]

    discount_ad = Ad.find(_id)
    discount_ad.kind = _kind
    discount_ad.name = _name
    discount_ad.menu = _menu
    discount_ad.starttime = _starttime
    discount_ad.endtime = _endtime
    discount_ad.startday = _startday
    discount_ad.endday = _endday
    discount_ad.repeat = _repeat
    discount_ad.startdiscount = _startdiscount
    discount_ad.timegap =_timegap
    discount_ad.discountgap = _discountgap
    discount_ad.storeuser_id = _storeuser_id

    discount_ad.save

    redirect_to controller: 'ad', action: 'read'
    
  end
  
  def update_fcfs
    _id = params[:id]
    _kind = params[:kind]
    _name = params[:name]
    __menu = params[:menu]
    _starttime = params[:starttime]
    _endtime = params[:endtime]
    _startday= params[:startday]
    _endday = params[:endday]
    _repeat = params[repeat]
    _startdiscount = params[:startdiscount]
    _timegap = params[:timegap]
    _discountgap = params[:discountgap]
    _storeuser_id = params[:storeuser_id]

    fcfs_ad = Ad.find(_id)
    fcfs_ad.kind = _kind
    fcfs_ad.name = _name
    fcfs_ad.menu = _menu
    fcfs_ad.starttime = _starttime
    fcfs_ad.endtime = _endtime
    fcfs_ad.startday = _startday
    fcfs_ad.endday = _endday
    fcfs_ad.repeat = _repeat
    fcfs_ad.startdiscount = _startdiscount
    fcfs_ad.timegap =_timegap
    fcfs_ad.discountgap = _discountgap
    fcfs_ad.storeuser_id = _storeuser_id

    fcfs_ad.save

    redirect_to controller: 'ad', action: 'read'
  
  end
  
  def update_plus
    _id = params[:id] 
    _kind = params[:kind]
    _name = params[:name]
    __menu = params[:menu]
    _starttime = params[:starttime]
    _endtime = params[:endtime]
    _startday= params[:startday]
    _endday = params[:endday]
    _repeat = params[repeat]
    _startdiscount = params[:startdiscount]
    _timegap = params[:timegap]
    _discountgap = params[:discountgap]
    _storeuser_id = params[:storeuser_id]

    plus_ad = Ad.find(_id)
    plus_ad.kind = _kind
    plus_ad.name = _name
    plus_ad.menu = _menu
    plus_ad.starttime = _starttime
    plus_ad.endtime = _endtime
    plus_ad.startday = _startday
    plus_ad.endday = _endday
    plus_ad.repeat = _repeat
    plus_ad.startdiscount = _startdiscount
    plus_ad.timegap =_timegap
    plus_ad.discountgap = _discountgap
    plus_ad.storeuser_id = _storeuser_id

    plus_ad.save

    redirect_to controller: 'ad', action: 'read' 
  
  end

  def delete
    _id = params[:id]

    ad = ad.find(_id)
    authorize_action_for ad 

    ad.destroy
    redirect_to controller: 'ad', action: 'read'

  end
end
