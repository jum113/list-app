class NotesController < ApplicationController
  def index
    @note = Note.new
    @notes = Note.order(id: "DESC")
    @list = List.new
    @lists = List.order(id: "ASC")
  end

  def create
    note = Note.create(note_params)
    render json: { post: note }
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to root_path
  end

  def search
    @notes = Note.search(params[:keyword])
    @note = Note.new
    @list = List.new
    @lists = List.order(id: "ASC")
  end

  private

  def note_params
    params.require(:note).permit(:title, :content).merge(user_id: current_user.id)
  end

  def list_params
    params.require(:list).permit(:list_text).merge(user_id: current_user.id)
  end
end