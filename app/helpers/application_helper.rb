module ApplicationHelper

  def settings(name, default = '')
    s = Setting.find_by_name(name)
    !s.nil? ? s.val : default
  end

end
