class SessionsController < ApplicationController


    # if !params[:name] || params[:name].empty?
    #   redirect_to controller: 'sessions', action: 'new'
    # else
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # end
  def create
    # byebug
    member = Member.find_by(name: params[:member][:name])
    if member.try(:authenticate, params[:member][:password])
        session[:member_id] = member.id
        redirect_to :root
    else
        flash[:message] = "Wrong info!!!"
        render :login
    end
  end

  def login
  end

  def destroy    
    session.delete(:member_id)
    redirect_to login_path
  end

  
end