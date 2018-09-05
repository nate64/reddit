class SubsController < ApplicationController

  before_action :set_sub, only: [:show, :edit, :update, :destroy]

  def index
    @subs = Sub.all 
    #render :index - ruby defaults to this, unless told to render
      #something else
  end

  def show
    #@sub = Sub.find(params[:id])
    #render :show
  end

  def new
    @sub = Sub.new
    render partial: "form"
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to subs_path
    else
      render :new
    end
  end

  def edit
    #@sub = Sub.find(params[:id])
    render partial: "form"
  end

  def update
    #@sub = Sub.find(params[:id])

    if @sub.update(sub_params)
      #redirect_to @sub 
      redirect_to sub_path(@sub)
    else
      render :edit #renders edit.html.erb
    end
  end

  def destroy
    @sub.destroy
    redirect_to subs_path #index
  end

private

  def set_sub
    @sub = Sub.find(params[:id])
  end


  def sub_params
    params.require(:sub).permit(:name)  #add more here after completing model
  end


end








