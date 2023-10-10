module SidebarHelper
  def current_class_by(path:)
    'active' if request.path == path
  end
end
