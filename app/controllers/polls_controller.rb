class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(params[:poll])
    p @poll.inspect

    if @poll.save
      redirect_to poll_path(@poll)
    else
      redirect_to new_poll_path, :flash => {:error => "Poll could not be created"}
    end
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def edit
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    if @poll.update_attributes(params[:poll])
      redirect_to poll_path(@poll)
    else
      redirect_to edit_poll_path(@poll), :flash => {:errod => "There was an error updating the poll"}
    end
  end
end
