class NotesController < ApplicationController
  def index
    @note = Note.new
    @notes = Note.order(id: "DESC")
  end

  def create
    note = Note.create(note_params)
    render json: { post: note }
  end

  private

  def note_params
    params.require(:note).permit(:title, :content).merge(user_id: current_user.id)
  end
end