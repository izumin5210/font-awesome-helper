module FontAwesomeHelper
  module Helpers
    FA_CLASS_PREFIX = 'fa'

    # TODO: fw (e.g. `fa_icon 'github', fixed: true`)
    # TODO: border (e.g. `fa_icon 'github', border: true`)
    # TODO: spin (e.g. `fa_icon 'github', spin: true`)
    # TODO: size (e.g. `fa_icon 'github', size: '2x'`)
    # TODO: rotate (e.g. `fa_icon 'github', rotate: 90`)
    # TODO: flip (e.g. `fa_icon 'github', flip: :vertical`)
    def fa_icon(names, options = {})
      icon = FaIcon.new(names, options)
      (block_given? ? yield(icon.to_tag) : icon.to_tag).html_safe
    end

    def fa_ul(options = {}, &block)
      classes = %w(fa-ul)
      classes += options.delete(:class).split(' ') if options.key? :class
      content_tag :ul, class: classes.join(' '), &block
    end

    def fa_li(names, options = {})
      content = fa_icon(names + ' li') { |i| "#{i}#{yield}" }
      content_tag :li, content, options
    end
    # TODO: stackしやすいやつ
    # TODO: fa-ul，fa-liのやつ
  end
end
