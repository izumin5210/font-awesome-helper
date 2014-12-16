module FontAwesomeHelper
  module Helpers
    FA_CLASS_PREFIX = 'fa'

    # TODO: オプションでclass渡せるようにする
    # TODO: ブロック渡せるようにする
    # TODO: fw (e.g. `fa_icon 'github', fixed: true`)
    # TODO: border (e.g. `fa_icon 'github', border: true`)
    # TODO: spin (e.g. `fa_icon 'github', spin: true`)
    # TODO: size (e.g. `fa_icon 'github', size: '2x'`)
    # TODO: rotate (e.g. `fa_icon 'github', rotate: 90`)
    # TODO: flip (e.g. `fa_icon 'github', flip: :vertical`)
    def fa_icon(names, options = {})
      names = classes(names).map { |n| "#{FA_CLASS_PREFIX}-#{n}" }
      classes = %W(fa #{names.join(' ')}) + classes(options.delete(:class))
      icon_tag = content_tag(:i, nil, class: classes)
      (block_given? ? yield(icon_tag) : icon_tag).html_safe
    end

    # TODO: stackしやすいやつ
    # TODO: fa-ul，fa-liのやつ

    private

    def classes(names)
      case names
      when Array then names
      when String then names.split(/\s+/)
      else []
      end
    end
  end
end
