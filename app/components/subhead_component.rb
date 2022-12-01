# frozen_string_literal: true

class SubheadComponent < ViewComponent::Base
    def initialize(title:, description: nil, danger: false)
        @title = title
        @description = description
        @danger = danger
    end

    def render?
        @title.present?
    end
end
