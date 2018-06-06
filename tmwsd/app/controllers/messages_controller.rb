class MessagesController < ApplicationController

  require 'securerandom'

  before_action :find_message, only: [:verify_password, :show, :authenticate]

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    @message.token = SecureRandom.hex(10)

    if @message.save
      render :dashboard
    else
      redirect_to new_message_path
    end
  end

  def show
    if @message.password_digest.nil?
      @content = Marshal.load( Marshal.dump(@message) )
      @message.delete
    else
      redirect_to "/messages/#{@message.token}/authenticate"
    end
  end

  def index
    redirect_to new_message_path
  end

  def authenticate
  end

  def verify_password
    if @message && @message.authenticate(params[:message][:password])
      @content = Marshal.load( Marshal.dump(@message) )
      @message.delete

      render :show
    else
      @error = "THE PASSWORD YOU ENTERED IS INCORRECT."
      render :authenticate 
    end
  end

  def dashboard
  end

  private

    def find_message
      @message = Message.find_by(token: params[:token])

      if @message.nil?
        redirect_to new_message_path
      end
    end

    def message_params
      params.require(:message).permit(
        :body,
        # :email,
        :password
        )
    end

end
