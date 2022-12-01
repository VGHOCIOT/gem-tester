module ApplicationHelper
    def page_title(separator = " – ")
        [content_for(:title)].compact.join(separator)
    end
end