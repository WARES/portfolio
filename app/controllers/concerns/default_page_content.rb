module DefaultPageContent
  extend ActiveSupport::Concern
  included do
    before_filter :set_title
  end

  def set_title
    @page_title = "Enrique Nares | Portfolio"
    @seo_keywords = "Enrique Nares portfolio"
  end

end
