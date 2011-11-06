class NamesController < ApplicationController
  
  def index
   @names = Name.order("name").where(:gender => "male").page(params[:page]).per(10) 

   @size = Name.all 
   @male_size = Name.order("name").where(:gender => "male").all.size       #TODO Cache this up 
   @female_size = Name.order("name").where(:gender => "female").all.size   #TODO Cache this up 
   @middle_size = Name.order("name").where(:category => "middle").all.size #TODO Cache this up 
   @th_size = Name.order("name").where(:category => "th").all.size         #TODO Cache this up 

  end
  

  def show
    @names = Name.order("name").where(:gender => "male").page(params[:page]).per(10)
  end

  #Allows a user to like a specific name
  def create
    @name = Name.find(params[:id])
    @user = current_user
    @user.names << @name  
    respond_to do |format|
      if @user.save
        format.js {@name}
      else
      #TODO: Something went wrong
      end
    end
  end

  #Allow a user to unlike a specific names
  def destroy
    @name = Name.find(params[:id])
    @user = current_user
    @user.names.delete(@name)   
    if @user.save
      format.js {@name}
    else
      #Something went wrong  
    end
  end

  def random
    @random = Name.all.sort_by{rand}[0..6]
  end

  def name_the_baby
    @random = Name.all.sort_by{rand}[2..3]  
  end

  def search
    if(params[:contains]).nil?
      @names = Name.search('111')
  else
    @names = Name.search(params[:contains])
  end  
  end

#:string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date,
#:binary, :boolean, :references
          
    
    #@name = Name.find(params[:name])
    #@current_user.names << @name
    #@current_user.save
    #redirect_to :action => 'details', :id => params[:id]
end
