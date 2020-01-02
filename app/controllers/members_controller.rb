class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    @plots = Plot.all
    @gardens = Garden.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to member_path(@member)
    else
      flash[:login_message] = "Account has been created, please login."
      redirect_to login_path
  end
end

private

def member_params
  params.require(:member).permit(:name, :password, :password_confirmation)
end

end
