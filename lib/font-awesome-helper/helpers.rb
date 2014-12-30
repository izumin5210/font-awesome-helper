module FontAwesomeHelper
  module Helpers
    FA_CLASS_PREFIX = 'fa'

    def fa_icon(names, options = {})
      icon = FaIcon.new(names, options)
      (block_given? ? yield(icon.to_tag) : icon.to_tag).html_safe
    end

    def fa_ul(options = {}, &block)
      classes = %W(#{FA_CLASS_PREFIX}-ul)
      classes += options.delete(:class).split(' ') if options.key? :class
      content_tag :ul, class: classes.join(' '), &block
    end

    def fa_li(names, options = {})
      content = fa_icon(names + ' li') { |i| "#{i}#{yield}" }
      content_tag :li, content, options
    end
  end
end
