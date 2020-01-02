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
      flash[:message] = @member.errors.full_messages
      render :new
  end
end

private

def member_params
  params.require(:member).permit(:name)
end

end
