class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    # return head(:forbidden) unless session.include? :member_id
    @member = Member.find(params[:id])
    @plots = Plot.all
    @gardens = Garden.all
    # if session[:member_id] != params[:id].to_i
    #   flash[:message] = "You are not authorized to view this page"
    #   redirect_to members_path
    # end
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      flash[:login_message] = "Account has been created, please login."
      # redirect_to member_path(@member)
      redirect_to login_path
    else
      # flash[:login_message] = "Account has been created, please login."
      redirect_to login_path
  end
end

private

def member_params
  params.require(:member).permit(:name, :password, :password_confirmation)
end

end
