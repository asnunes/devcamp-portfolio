module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Devcamp | Alexandre's Portfolio"
    @seo_keywords = "Alexandre Nunes Portfolio"
  end
end