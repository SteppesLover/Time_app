module ApplicationHelper

def inline_error_for(field, form_obj)
  return unless form_obj.errors[field].any?
  form_obj.errors[field].map do |msg|
    tag.div(msg, class: "text-red-500 text-sm mt-1")
  end.join.html_safe
end

end
