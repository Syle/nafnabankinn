class UsersController < ApplicationController

  def index
    @user = current_user
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
