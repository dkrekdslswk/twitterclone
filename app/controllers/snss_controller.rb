class SnssController < ApplicationController
  before_action :set_sns, only: [:show, :edit, :update, :destroy]
  
  def index
    @snss = Snss.all
  end
  
  def confirm
    @sns = Snss.new(sns_params)
    render :new if @sns.invalid?
  end
  
  def new
    if params[:back]
      @sns = Snss.new(sns_params)
    else 
      @sns = Snss.new
    end
  end

  def create
    @sns = Snss.new(sns_params)
    if  @sns.save
      redirect_to snss_index_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if  @sns.update(sns_params)
      redirect_to snss_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @sns.destroy
    redirect_to snss_index_path
  end
  
  private
  
  def sns_params
    params.require(:snss).permit(:content)
  end
  
  def set_sns
    @sns = Snss.find(params[:id])
  end
end
