class ListsController < ApplicationController
  def create
    list = List.create(list_params)
    render json: { post: list }
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to root_path
  end

  def list_params
    params.require(:list).permit(:list_text).merge(user_id: current_user.id)
  end
end
