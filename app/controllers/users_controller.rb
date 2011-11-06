class UsersController < ApplicationController

  def index
    @user = current_user

    #Skítamix þangað til ég kemst að því hvernig á að gera þetta betur :)
   @size = Name.all 
   @male_size = Name.order("name").where(:gender => "male").all.size       #TODO Cache this up 
   @female_size = Name.order("name").where(:gender => "female").all.size   #TODO Cache this up 
   @middle_size = Name.order("name").where(:category => "middle").all.size #TODO Cache this up 
   @th_size = Name.order("name").where(:category => "th").all.size         #TODO Cache this up 

  end

  #Allow a user to unlike a specific names
  def remove_name
    @name = Name.find(params[:id])
    @user = current_user
    #@user.names.delete_all
    @user.names.delete(@name)   
    if @user.save
      format.js {@name}
    else
      #Something went wrong  
    end
  end  

end
