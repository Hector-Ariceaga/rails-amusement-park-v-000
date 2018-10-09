module ApplicationHelper
  def display_errors(object)
    object.errors.full_messages.each do |message|
      message
    end
  end
end
