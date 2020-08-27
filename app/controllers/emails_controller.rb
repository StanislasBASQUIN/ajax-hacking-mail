class EmailsController < ApplicationController
  def index
    @emails = Email.all.sort_by(&:created_at).reverse
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def create
    @email = Email.create_fake
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end
end