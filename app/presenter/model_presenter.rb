class ModelPresenter
  include HtmlBuilder

  attr_reader :object, :view_content
  delegate :raw, :link_to, to: :view_context

  def initialize(object, view_content)
    @object = object
    @view_content = view_content
  end
end
