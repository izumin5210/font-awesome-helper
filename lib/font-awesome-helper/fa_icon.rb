module FontAwesomeHelper
  class FaIcon
    include ActionView::Helpers::TagHelper
    FA_CLASS_PREFIX = 'fa'

    def initialize(names, options = {})
      @classes = [FA_CLASS_PREFIX]
      @classes.concat fa_prefixize(names_to_a(names))
      @classes.concat names_to_a(options.delete(:class))
    end

    def to_tag
      content_tag(:i, nil, class: @classes.join(' '))
    end

    private

    def names_to_a(names)
      case names
      when Array then names
      when String then names.split(/\s+/)
      else []
      end
    end

    def fa_prefixize(names)
      names.map { |n| "#{FA_CLASS_PREFIX}-#{n}" }
    end
  end
end
