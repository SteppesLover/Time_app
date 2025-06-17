class MessageController < ApplicationController
  before_action :set_message, only: %i[edit update destroy]
  before_action :load_user_settings

 def index
    @messages = Message.order(start_time: :asc)
  end

  def new
    @messages = Message.order(start_time: :asc)
  end

  def create
  @message = Message.new(message_params)   # <--- Инициализация объекта здесь!
  @messages = Message.order(start_time: :asc)

  if @message.save
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.prepend("messages", @message),
          turbo_stream.replace("new_message", partial: "form", locals: { message: Message.new })
        ]
      end
      format.html { redirect_to message_index_path, notice: "Message created." }
    end
  else
    render partial: "form", status: :unprocessable_entity, locals: { message: @message }
  end
  end

  def edit
    render partial: "form", locals: { message: @message }
  end

  def update
    if @message.update(message_params)
      respond_to do |format|
        format.turbo_stream { render partial: "row", locals: { message: @message } }
        format.html { redirect_to message_index_path, notice: "Message updated." }
      end
    else
      render partial: "form", status: :unprocessable_entity, locals: { message: @message }
    end
  end

  def destroy
    @message.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(dom_id(@message)) }
      format.html { redirect_to message_index_path, notice: "Message deleted." }
    end
  end

  private

  def set_message
    @message = Message.find(params[:id])  # Ищи конкретное сообщение по id
    @messages = Message.order(start_time: :asc)
  end

  def message_params
    params.require(:message).permit(:time_spend_type, :activity, :start_time, :end_time)
  end

  def load_user_settings
    @setting = Setting.first_or_create
  end

end